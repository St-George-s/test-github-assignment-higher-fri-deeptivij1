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
    valid = False
    while valid == False:
        inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
        year = int(inputDOB[:4])
        month = int(inputDOB[5:7])
        day = int(inputDOB[8:10])

        # Day check
        if not (1<= day <= 31):
            print("Invalid day. Try again.")
            continue
        
        # Month check
        if not (1<= month <= 12):
            print("Invalid month. Try again.")
            continue

        # Year check
        if year < 2025:
            valid = True

        elif year == 2025:
            if month == 12 and day >= 5:
                print("Invalid. DOB must be before 05/12/2025.")
                continue
        elif year > 2025:
            print("Invalid. DOB must be before 05/12/2025.")
            continue
        else:
            valid = True
    return inputDOB
  

def validateApptDate():
    valid = False
    while valid == False:
        inputDate = input("Enter desired appointment date (YYYY-MM-DD):")
        year = int(inputDate[:4])
        month = int(inputDate[5:7])
        day = int(inputDate[8:10])

        # Checks between 01/12/2025 - 05/12/2025
        if not (1<= day <= 5) and month != 12 and year != 2025:
            print("Date not in range.")
            continue

        # Month check
        if not (1<= month <= 12):
            print("Invalid month. Try again.")
            continue


date = validateDOB()
print(date)





