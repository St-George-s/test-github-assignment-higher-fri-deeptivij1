# -------------------------------
# Imports
# -------------------------------
import mysql.connector
from datetime import datetime, date


# FR5 - Connection to database
# -------------------------------
# Database configuration
# -------------------------------
DB_CONFIG = {
    "host": "127.0.0.1",       # Address of mySQL server
    "user": "student",         # Username
    "password": "studentpw",   # Password 
    "database": "project1",    # Name of database being used
    "port": 3306               # Default port number
}

def open_db():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cur = conn.cursor()
        return conn, cur
    except:
        print("Database connection error")

def close_db(conn, cur):
    cur.close()
    conn.close()

# -------------------------------
# Functional Requirements
# -------------------------------
# FR2 - Display all available slots which don't coincide with user's previously booked appointments
def displayNonConflictingSlots(cur, currentUserID, inputSpeciality, inputDate):
    cur.execute("""
                
    SELECT s.slotID, s.startTime, s.endTime, d.fullName AS 'Doctor'
    FROM Slot s, Doctor d
    WHERE s.doctorID = d.doctorID
    AND d.speciality = %s
    AND DATE(s.startTime) = %s
    AND s.isAvailable = True
    AND NOT EXISTS (
        SELECT bookedSlot.slotID
        FROM Slot bookedSlot, Appointment a 
        WHERE bookedSlot.slotID = a.slotID
        AND a.patientID = %s
        AND bookedSlot.startTime = s.startTime )
    ORDER BY s.startTime ASC;
                
    """, (inputSpeciality, inputDate,currentUserID,))
    print("") 
    formatSQL(cur)

# FR3 - Display the user's booked appointments
def displayBookedAppts(cur, currentUserID):
    cur.execute("""
                
    SELECT a.apptID, s.startTime, s.endTime, d.fullName AS 'Doctor', d.roomNo, d.speciality, a.note
    FROM Slot s, Doctor d, Appointment a
    WHERE a.slotID = s.slotID
    AND s.doctorID = d.doctorID
    AND a.patientID = %s
    ORDER BY s.startTime ASC;
                
    """, (currentUserID,))
    print("")
    formatSQL(cur)


# FR4: Display doctors with more than 5 available appointments
def displayMostAvailableDoctors(cur):
    cur.execute("""

    SELECT d.doctorID, d.fullName AS 'Doctor', d.speciality, COUNT(s.slotID) AS 'No. of appointments'
    FROM Doctor d, Slot s
    WHERE s.doctorID = d.doctorID
    AND s.isAvailable = True
    GROUP BY d.doctorID
    HAVING COUNT(s.slotID) > 5;
                
    """)          
    formatSQL(cur)

# FR8 - Validate that the DOB is in the past < 05-12-2025
def validateDOB(inputDOB):
    try:
        # Converts string to datetime without time part
        inputDOB = datetime.strptime(inputDOB,"%Y-%m-%d").date()  
    except:
        # If conversion doesn't work (incorrect format, length etc.)
        return False
    
    # Create cutoff date object for comparison
    cutoff = date(2025, 12, 5)

    if inputDOB < cutoff:
        return True
    else:
        return False

# FR9 - Validate that the desired appointment date is in range
def validateApptDate(inputDate):
    try: 
        # Converts user input to datetime without time part
        inputDate = datetime.strptime(inputDate,"%Y-%m-%d").date()
    except:
        # If conversion doesn't work (incorrect format, length etc.)
        return False
    
    # Create valid range: 1 Dec - 5 Dec 2025
    start = date(2025, 12, 1)
    end = date(2025, 12, 5)

    if start <= inputDate <= end:
        return True
    else:
        return False

# FR10 - Sign in: find and store the patientID in a variable
def signIn(cur, inputName, inputDOB):
    cur.execute("""
                
    SELECT p.patientID
    FROM Patient p
    WHERE p.fullName = %s
    AND p.dob = %s;
                
    """, (inputName,inputDOB))
    result = cur.fetchall()

    # If no patientID found
    if result == []:
        return None
    else:
    # If patientID is found
        currentUserID = result[0][0]
        return currentUserID
    
# FR11 - Update availability of slot when it is chosen for booking
def updateAvailability(conn, cur, chosenSlotID):
    cur.execute("""
                
    UPDATE Slot s
    SET s.isAvailable = False
    WHERE s.slotID = %s;
                
    """, (chosenSlotID,))
    conn.commit() # Save changes to database

#  FR12 - Insert row into Appointment table after slot is chosen, including optional note 
def addAppointment(conn, cur, currentUserID, chosenSlotID, inputNote):
    cur.execute("""
                
    INSERT INTO Appointment(slotID, patientID, note)
    VALUES(%s, %s, %s);
                
    """, (chosenSlotID, currentUserID, inputNote))
    conn.commit() # Save changes to database

# FR13 - Display info about all doctors in the clinic
def displayAllDoctors(cur):
    cur.execute("""
                
    SELECT d.fullName AS 'Doctor', d.speciality, d.roomNo
    FROM Doctor d;
                
    """)
    print("")
    formatSQL(cur)


# FR6 + FR7 -  User Interface
# -----------------------------------------------
# Format SQL query results - provided by teacher
# -----------------------------------------------
def formatSQL(cur):
    cols = [d[0] for d in cur.description]
    print(" | ".join(cols))
    for row in cur.fetchall():
        print(" | ".join(str(x) for x in row))

# -------------------------------
# Menu
# -------------------------------
def displayMenu():
    print("""\n -- Appointment System Menu --
    1. Book appointment
    2. View list of all doctors at clinic
    3. View booked appointments
    4. Find most available doctors
    5. Quit program
    """)

# # -------------------------------
# # Main program
# # -------------------------------
def main():
    # Open database
    conn, cur = open_db()
    # Sign-in process
    currentUserID = None

    # Repeat until user is found
    while currentUserID == None:
        inputName = input("Enter your full name: ")
        inputDOB = input("Enter your date of birth (YYYY-MM-DD):")
        
        if validateDOB(inputDOB) == False:
            print("Invalid DOB. Must be before 2025-12-05. Please try again.")
            continue # Ask for input again

        # Attempt to sign in with valid DOB + name
        currentUserID = signIn(cur,inputName, inputDOB)
        if currentUserID == None:
            print("User not found. Please check full name and DOB and try again.")
            
        else:
            # User found
            print("Signed in! Welcome, " + inputName + " ID: " + str(currentUserID))
    
    # Main menu loop
    while True:
        displayMenu()
        choice = input("Enter your choice: ")

        # -------------------------------
        # 1. Book appointment
        # -------------------------------
        if choice == '1':
            inputSpeciality = input(
                "Enter speciality (General/Sports/Dermatology/Oncology/Paediatrics/Radiology/Obs/Gynae/Cardiology/Psychiatry/ENT/Other): ")
            
            # Validate appointment date input
            while True:
                inputDate = input("Enter desired appointment date (YYYY-MM-DD):")
                if validateApptDate(inputDate) == True:
                    break
                else:
                    print("Invalid date. Please enter a date between 2025-12-01 and 2025-12-05. ")

            # Show non-conflicting available slots
            displayNonConflictingSlots(cur, currentUserID, inputSpeciality, inputDate)

            # Choose a slot
            chosenSlotID = int(input("Enter slot ID of appointment to book: "))

            # Mark slot unavailable
            updateAvailability(conn, cur, chosenSlotID)
            
            # Get note and insert appointment record
            inputNote = input("Add optional note (Enter space to leave blank): ")
            addAppointment(conn, cur, currentUserID, chosenSlotID, inputNote)
            print("Appointment booked successfully!")


        # -------------------------------
        # 2. View all doctors
        # -------------------------------
        elif choice == '2':
            displayAllDoctors(cur)


        # -------------------------------
        # 3. View booked appointments
        # -------------------------------
        elif choice == '3':
            displayBookedAppts(cur, currentUserID)
    

        # -------------------------------
        # 4. Find most available doctors
        # -------------------------------
        elif choice == '4':
            displayMostAvailableDoctors(cur)
        
        
        # -------------------------------
        # 5. Quit program
        # -------------------------------
        elif choice == '5':
            print("Thank you. Goodbye.")
            close_db(conn, cur)
            break 

# -------------------------------
# Run
# -------------------------------
main()


