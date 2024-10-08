import csv

# Defining student
class Student:
    def __init__(self, studentID, firstName, lastName, grade):
        self.studentID = studentID
        self.firstName = firstName
        self.lastName = lastName
        self.grade = grade


def readStudentData():
    with open("File handling/students.csv", 'r') as file:
        students = [] # array of records
        reader = csv.reader(file)
        next(reader)  # Skips the header
        for row in reader:
            # Creates a Student object for each row of info 
            # + adds it to array of records
            student_row = Student(row[0], row[1], row[2], row[3]) # CAST HERE AS ALL ARE STRINGS FROM CSV
            students.append(student_row)
    
    return students

# Call and store function
students = readStudentData()

# Print all the details you want from object[0] in student array
for x in range(len(students)):
    print(students[x].studentID, students[x].firstName, students[x].lastName, students[x].grade)



