import mysql.connector
from dataclasses import dataclass
from typing import List, Optional

# -------------------------------
# Database configuration
# -------------------------------
DB_CONFIG = {
    "host": "127.0.0.1",
    "user": "student",
    "password": "studentpw",
    "database": "project1",
    "port": 3306
}

# -------------------------------
# Database helpers
# -------------------------------
def open_db():
    conn = mysql.connector.connect(**DB_CONFIG)
    cur = conn.cursor()
    return conn, cur

def close_db(conn, cur):
    cur.close()
    conn.close()

# -------------------------------
# Menu + input validation
# -------------------------------
def signIn():

def displayMenu():
    print("\n -- Appointment System Menu --")
    print("1. Book appointment")
    print("2. View list of all doctors at clinic")
    print("3. View booked appointments")
    print("4. Find most available doctors")

def validateDOB():
    inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
    while inputDOB < 2025-12-5:
        inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
        print("Invalid date of birth.")
    return inputDOB


validateDOB()



