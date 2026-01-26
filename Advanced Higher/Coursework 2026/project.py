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
    pass

def displayMenu():
    print("\n -- Appointment System Menu --")
    print("1. Book appointment")
    print("2. View list of all doctors at clinic")
    print("3. View booked appointments")
    print("4. Find most available doctors")

def validateDOB():
    inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
    year = int(inputDOB[:4])
    month = int(inputDOB[5:7])
    day = int(inputDOB[8:10])
    isMonthValid =  not (1 <= month <= 12)


    while isMonthValid and 
        

    # while int() > 2025 or (int(inputDOB[:3]) and int(inputDOB[5:6]) == 12 and int(inputDOB)[8:9] > 5):
    #     inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
    #     print("Invalid date of birth.")
    # return inputDOB

def validateApptDate():
    inputDate = int(input("Enter the desired appointment date (YYYY-MM-DD):"))
    #while inputDate < 2025-12-

date = validateDOB()
print(date)




