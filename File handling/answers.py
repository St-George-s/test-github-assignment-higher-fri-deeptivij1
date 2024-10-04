# Task 1 - reading parallel arrays

import csv

studentID = []
firstName = []
lastName = []
grade =  []


def readfile():
    with open("File handling/students.csv", 'r') as file:
        reader = csv.reader(file)
        next(reader)  # Skips the header
        for row in reader:
            studentID.append(row[0])
            firstName.append(row[1])
            lastName.append(row[2])
            grade.append((row[3]))

def printArrays():
    for x in range(len(studentID)):
        print(studentID[x], "is", firstName[x], lastName[x], "with grade", grade[x])


readfile()
printArrays()





