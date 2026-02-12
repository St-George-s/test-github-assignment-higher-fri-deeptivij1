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
#def open_db():
conn = mysql.connector.connect(**DB_CONFIG)
cur = conn.cursor()
    #return conn, cur

# def close_db(conn, cur):
#     cur.close()
#     conn.close()

# -------------------------------
# Menu
# -------------------------------

def displayMenu():
    print("\n -- Appointment System Menu --")
    print("1. Book appointment")
    print("2. View list of all doctors at clinic")
    print("3. View booked appointments")
    print("4. Find most available doctors")

def formatSQL():
    cols = [d[0] for d in cur.description]
    print(" | ".join(cols))
    for row in cur.fetchall():
        print(" | ".join(str(x) for x in row))
    
# FR9 - Get and validate that DOB is in the past < 05-12-2025
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
                print("Invalid. DOB must be before 2025-12-05.")
                continue
            else:
                valid = True
        elif year > 2025:
            print("Invalid. DOB must be before 2025-12-05.")
            continue
        else:
            valid = True
    return inputDOB

# FR10 - Get and validate that the desired appointment date is in range
def validateApptDate():
    valid = False
    while valid == False:
        inputDate = input("Enter desired appointment date (YYYY-MM-DD):")
        year = int(inputDate[:4])
        month = int(inputDate[5:7])
        day = int(inputDate[8:10])

        # Checks between 01/12/2025 - 05/12/2025
        if not ((1<= day <= 5) and month == 12 and year == 2025):
            print("Invalid. Date not in range.")
            continue
        else:
            valid = True

    return inputDate

# FR11 - Sign in: find and store the patientID in a variable
def signIn():
    signedIn = False
    while signedIn == False:
        inputName = input("Enter your full name: ")
        inputDOB = validateDOB()
        cur.execute("""
        SELECT p.patientID
        FROM Patient p
        WHERE p.fullName = %s
        AND p.dob = %s;
        """, (inputName,inputDOB))
        # If no patientID found
        if cur.fetchall() == []:
            print("User not found. Please try again.")
            continue
        else: 
            currentUserID = cur.fetchall()[0][0]
            if (1 <= currentUserID <= 60):
                signedIn = True
                print("Signed in!")

    return currentUserID

# FR14 - Select and display all info about doctors in the clinic
def displayAllDoctors():
    cur.execute("""
    SELECT d.fullName AS 'Doctor', d.speciality, d.roomNo
    FROM Doctor d;
    """)
    formatSQL()

# FR4: Displays doctors with less than 5 booked appointments
def displayMostAvailableDoctors():
    cur.execute("""
    SELECT d.doctorID, d.fullName AS 'Doctor', d.speciality, COUNT(s.isAvailable)
    FROM Doctor d, Slot s
    WHERE d.doctorID = s.doctorID
    AND s.isAvailable = 0
    HAVING COUNT(s.isAvailable) < 5;
    """)
    formatSQL()

def leastBusy():
    cur.execute("""
    SELECT *
    FROM Slot;
    """)
    formatSQL()

# FR3 - Display all the user's booked appointments
def displayBookedAppts(currentUserID):
    cur.execute("""
    SELECT a.apptID, s.startTime, s.endTime, d.fullName AS 'Doctor', d.roomNo, d.speciality, a.note
    FROM Slot s, Doctor d, Appointment a
    WHERE a.slotID = s.slotID
    AND s.doctorID = d.doctorID
    AND a.patientID = '%s'
    ORDER BY s.startTime ASC;
    """, (currentUserID,))
    formatSQL()

# FR12 - Update availability of slot when it is chosen for booking
def updateAvailability(chosenSlotID):
    cur.execute("""
    UPDATE Slot s
    SET s.isAvailable = False
    WHERE s.slotID = %s;
    """, (chosenSlotID,))

#  FR13 - Insert row into Appointment table after slot is chosen, including optional note
def addAppointment(currentUserID, chosenSlotID):
    inputNote = input("Add optional note: ")
    cur.execute("""
    INSERT INTO Appointment a
    VALUES (%s, %s, %s);
    """, (chosenSlotID, currentUserID, inputNote))



# currentUserID = signIn()
# print(currentUserID)
#displayBookedAppts(currentUserID)
# displayAllDoctors()

updateAvailability(1)
leastBusy()
displayMostAvailableDoctors()

