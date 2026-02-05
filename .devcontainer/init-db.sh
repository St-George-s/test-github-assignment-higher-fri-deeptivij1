#!/usr/bin/env bash
set -euo pipefail

echo "[init-db] Installing MariaDB…"
sudo apt-get update -y
sudo apt-get install -y mariadb-server mariadb-client

echo "[init-db] Preparing data dirs…"
sudo mkdir -p /var/run/mysqld
sudo chown -R mysql:mysql /var/run/mysqld /var/lib/mysql

# Initialise if needed (idempotent)
sudo mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql || true

echo "[init-db] Starting mysqld…"
sudo nohup mysqld --user=mysql --datadir=/var/lib/mysql --bind-address=0.0.0.0 >/tmp/mysqld.log 2>&1 &

# Wait for server
echo -n "[init-db] Waiting for MariaDB"
for i in {1..60}; do
  if mysqladmin ping -h 127.0.0.1 --silent; then echo " ✓"; break; fi
  echo -n "."; sleep 1
done

echo "[init-db] Create default DB and accounts…"
# Use socket as root to avoid TCP auth assumptions
sudo mysql <<'SQL'
CREATE DATABASE IF NOT EXISTS school;

-- Ensure student exists on all relevant hosts, force password plugin
CREATE USER IF NOT EXISTS 'student'@'localhost' IDENTIFIED BY 'studentpw';
CREATE USER IF NOT EXISTS 'student'@'127.0.0.1' IDENTIFIED BY 'studentpw';
CREATE USER IF NOT EXISTS 'student'@'%' IDENTIFIED BY 'studentpw';

ALTER USER 'student'@'localhost' IDENTIFIED BY 'studentpw';
ALTER USER 'student'@'127.0.0.1' IDENTIFIED BY 'studentpw';
ALTER USER 'student'@'%' IDENTIFIED BY 'studentpw';

GRANT ALL PRIVILEGES ON *.* TO 'student'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'127.0.0.1';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'%';
FLUSH PRIVILEGES;
SQL

# Optional: seed 'school' (create the file then load)
if [[ -f /tmp/seed.sql ]]; then
  mysql --protocol=TCP -h 127.0.0.1 -ustudent -pstudentpw school < /tmp/seed.sql || true
fi

echo "[init-db] Done."