CREATE DATABASE IF NOT EXISTS project1;
USE project1;

-- DDL
CREATE TABLE IF NOT EXISTS pupils(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT
);

CREATE TABLE IF NOT EXISTS attendance(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pupil_id INT NOT NULL,
  present TINYINT(1) NOT NULL DEFAULT 1
);

-- DML
INSERT INTO pupils(name, age) VALUES
('Ada Lovelace', 17),
('Alan Turing', 18)
ON DUPLICATE KEY UPDATE name=VALUES(name), age=VALUES(age);

INSERT INTO attendance(pupil_id, present) VALUES (1,1)
ON DUPLICATE KEY UPDATE present=VALUES(present);
