import mysql.connector
from datetime import datetime, date

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

# -------------------------------
# Format SQL query results
# -------------------------------
def formatSQL(cur):
    cols = [d[0] for d in cur.description]
    print(" | ".join(cols))
    for row in cur.fetchall():
        print(" | ".join(str(x) for x in row))

# -------------------------------
# Functional Requirements
# -------------------------------
# FR2 - Display all available slots which don't coincide with user's previously booked appointments
def displayNonConflictingSlots(currentUserID, inputSpeciality, inputDate):
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
    formatSQL()

# FR3 - Display all the user's booked appointments
def displayBookedAppts(currentUserID):
    cur.execute("""
                
    SELECT a.apptID, s.startTime, s.endTime, d.fullName AS 'Doctor', d.roomNo, d.speciality, a.note
    FROM Slot s, Doctor d, Appointment a
    WHERE a.slotID = s.slotID
    AND s.doctorID = d.doctorID
    AND a.patientID = %s
    ORDER BY s.startTime ASC;
                
    """, (currentUserID,))
    print("")
    formatSQL()

# FR4: Displays doctors with more than 5 available appointments
def displayMostAvailableDoctors():
    cur.execute("""

    SELECT d.doctorID, d.fullName AS 'Doctor', d.speciality, COUNT(s.slotID) AS 'No. of appointments'
    FROM Doctor d, Slot s
    WHERE s.doctorID = d.doctorID
    AND s.isAvailable = True
    GROUP BY d.doctorID
    HAVING COUNT(s.slotID) > 5;
                
    """)          
    formatSQL()

# FR8 - Checks if DOB is in the past < 05-12-2025
def validateDOB(inputDOB):
    try:
        # Converts user input to datetime without time part
        inputDOB = datetime.strptime(inputDOB,"%Y-%m-%d").date()  
    except:
        # If conversion doesn't work (incorrect format, length etc.)
        return False
    
    # Create cutoff date to compare
    cutoff = date(2025, 12, 5)

    if inputDOB < cutoff:
        return True
    else:
        return False

# FR9 - Get and validate that the desired appointment date is in range
def validateApptDate(inputDate):
    try: 
        # Converts user input to datetime without time part
        inputDate = datetime.strptime(inputDate,"%Y-%m-%d").date()
    except:
        # If conversion doesn't work (incorrect format, length etc.)
        return False
    
    # Valid range: 1 Dec - 5 Dec 2025
    start = date(2025, 12, 1)
    end = date(2025, 12, 5)

    if start <= inputDate <= end:
        return True
    else:
        return False

# FR10 - Sign in: find and store the patientID in a variable
def signIn(inputName, inputDOB):
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
        currentUserID = result[0][0]
        return currentUserID
    
# FR11 - Update availability of slot when it is chosen for booking
def updateAvailability(chosenSlotID):
    cur.execute("""
                
    UPDATE Slot s
    SET s.isAvailable = False
    WHERE s.slotID = %s;
                
    """, (chosenSlotID,))
    conn.commit()

#  FR12 - Insert row into Appointment table after slot is chosen, including optional note 
def addAppointment(currentUserID, chosenSlotID, inputNote):
    cur.execute("""
                
    INSERT INTO Appointment(slotID, patientID, note)
    VALUES(%s, %s, %s);
                
    """, (chosenSlotID, currentUserID, inputNote))
    conn.commit()

# FR13 - Select and display info about all doctors in the clinic
def displayAllDoctors():
    cur.execute("""
                
    SELECT d.fullName AS 'Doctor', d.speciality, d.roomNo
    FROM Doctor d;
                
    """)
    print("")
    formatSQL()

# -------------------------------
# Main program
# -------------------------------
def main():
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
        currentUserID = signIn(inputName, inputDOB)
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
            
            # Validate appointment date
            while True:
                inputDate = input("Enter desired appointment date (YYYY-MM-DD):")
                if validateApptDate(inputDate) == True:
                    break
                else:
                    print("Invalid date. Please enter a date between 2025-12-01 and 2025-12-05. ")

            # Show non-conflicting available slots
            displayNonConflictingSlots(currentUserID, inputSpeciality, inputDate)

            # Book a slot
            chosenSlotID = int(input("Enter slot ID of appointment to book: "))
            updateAvailability(chosenSlotID)
            inputNote = input("Add optional note (Enter space to leave blank): ")
            addAppointment(currentUserID, chosenSlotID, inputNote)
            print("Appointment booked successfully!")

        # -------------------------------
        # 2. View all doctors
        # -------------------------------
        elif choice == '2':
            displayAllDoctors()

        # -------------------------------
        # 3. View booked appointments
        # -------------------------------
        if choice == '3':
            displayBookedAppts(currentUserID)
    
        # -------------------------------
        # 4. Find most available doctors
        # -------------------------------
        elif choice == '4':
            displayMostAvailableDoctors()
        
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
conn, cur = open_db()
main()


            


        
