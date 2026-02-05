# Task 1.
# - Making functions

times_spent = [5, 3, 4, 6, 7]

def find_max():
    max = times_spent[0]
    for time in times_spent:
        if time > max:
            max = time
    print("The maximum time spent was ", max, " hours")

def find_min():
    min = times_spent[0]
    for time in times_spent:
        if time < min:
            min = time 
    print("The minimum time spent was ", min, " hours")

def linear_search(times_spent, term):
    found = False
    counter = 0 
    while counter < len(times_spent) and not found:
        if times_spent[counter] == term:
            found = True
        else:
            counter +=1
    
    if found:
        print(str(term) + " was found at postion " + str(counter+1))
    else:
        print("Item not found.")


def count_occurrences(times_spent, term):
    counter = 0 
    for time in times_spent:
        if time == term:
            counter += 1
    print(counter)

find_min()
find_max()
linear_search(times_spent, int(input("Enter search term: ")))
counter = count_occurrences(times_spent, int(input("Enter term to count: " )))


# Task 2.
# - Using parallel arrays

names = ["Alice", "Ben", "Cara", "David", "Eva"]
activities = ["hillwalking", "canoeing", "climbing", "hillwalking", "canoeing"]
times_spent = [5, 3, 4, 6, 7]

def find_max():
    max = times_spent[0]
    i = 0
    for time in range(len(times_spent)):
        if times_spent[time] > max:
            max = times_spent[time]
            i = time
    print("The maximum time spent was " + str(max) + " hours by " + names[i] + " doing " + activities[i])

def find_min():
    min = times_spent[0]
    i = 0
    for time in range(len(times_spent)):
        if times_spent[time] < min:
            min = times_spent[time]
            i = time
    print("The minimum time spent was " + str(min) + " hours by " + names[i] + " doing " + activities[i])


def linear_search(times_spent, term):
    found = False
    counter = 0 
    while counter < len(times_spent) and not found:
        if times_spent[counter] == term:
            found = True
        else:
            counter +=1
    
    if found:
        print("Time " + str(term) + " hours was spent by " + names[counter] + " doing " + activities[counter])
    else:
        print("Item not found.")


def count_occurrences(times_spent, term):
    counter = 0 
    matches = ""
     
    for time in range(len(times_spent)):
        if times_spent[time] == term:
            counter += 1
            matches += names[time] + " "
    
    print("Time " + str(term) + " appeared "+ str(counter) + " times. Students: " + matches )

find_max()
find_min()
linear_search(times_spent, int(input("Enter hour to search: ")))
count_occurrences(times_spent, int(input("Enter term to count: ")))



# Task 3.
# - Using arrays of records 

names = ["Alice", "Ben", "Cara", "David", "Eva"]
activities = ["hillwalking", "canoeing", "climbing", "hillwalking", "canoeing"]
times_spent = [5, 3, 4, 6, 7]

# Defining Student object
class Student:
    def __init__(self, name, activity, time):
        self.name = name
        self.activity = activity
        self.time = time

# Making an array of records from above parallel arrays
def load_data():
    students_aor = []
    for i in range(len(names)):
        row = Student(names[i], activities[i], times_spent[i])
        students_aor.append(row)
    return students_aor



def find_max(students_aor):
    max = students_aor[0].time
    i = 0
    for count in range(len(students_aor)):
        if students_aor[count].time > max:
            max = students_aor[count].time
            i = count
    print("The maximum time spent was " + str(max) + " hours by " + students_aor[i].name + " doing " + students_aor[i].activity)

def find_min(students_aor):
    min = students_aor[0].time
    i = 0
    for count in range(len(students_aor)):
        if students_aor[count].time < min:
            min = students_aor[count].time
            i = count
    print("The minimum time spent was " + str(min) + " hours by " + students_aor[i].name + " doing " + students_aor[i].activity)


def linear_search(students_aor, term):
    found = False
    count = 0 
    while count < len(students_aor) and not found:
        if students_aor[count].time == term:
            found = True
        else:
            count +=1
    
    if found:
        print("Time " + str(term) + " hours was spent by " + students_aor[count].name + " doing " + students_aor[count].activity)
    else:
        print("Item not found.")
        
def count_occurrences(students_aor, term):
    counter = 0 
    matches = ""

    for time in range(len(students_aor)):
        if students_aor[time].time == term:
            counter += 1
            matches += students_aor[time].name + " "
    
    print("Time " + str(term) + " appeared "+ str(counter) + " times. Students: " + matches )



students_aor = load_data()
find_max(students_aor)
find_min(students_aor)
linear_search(students_aor, int(input("Enter time to search: ")))
count_occurrences(students_aor, int(input("Enter time to count: ")))


# Task 4 - Larger Datasets CSV Files
# *CSV file data needs to be casted when read 

import csv 

class Student:
    def __init__(self, name, activity, time):
        self.name = name
        self.activity = activity
        self.time = time

# Reads file into (with read) an array of records
def readfile():
    students_aor = []
    with open("starters/Standard Algorithms Lagganlia/lagganlia_student_activities.csv", 'r') as file:
        reader = csv.reader(file)
        next(reader)  # Skips the header
        for row in reader:
            student_row = Student(row[0], row[1], int(row[2]))
            students_aor.append(student_row)
    
    return students_aor


def find_max(students_aor):
    max = students_aor[0].time
    i = 0
    for count in range(len(students_aor)):
        if students_aor[count].time > max:
            max = students_aor[count].time
            i = count
    print("The maximum time spent was " + str(max) + " hours by " + students_aor[i].name + " doing " + students_aor[i].activity)

def find_min(students_aor):
    min = students_aor[0].time
    i = 0
    for count in range(len(students_aor)):
        if students_aor[count].time < min:
            min = students_aor[count].time
            i = count
    print("The minimum time spent was " + str(min) + " hours by " + students_aor[i].name + " doing " + students_aor[i].activity)


def linear_search(students_aor, term):
    found = False
    count = 0 
    while count < len(students_aor) and not found:
        
        if students_aor[count].time == term:
            found = True
        else:
            count +=1
    
    if found:
        print("Time " + str(term) + " hours was spent by " + students_aor[count].name + " doing " + students_aor[count].activity)
    else:
        print("Item not found.")
        
def count_occurrences(students_aor, term):
    counter = 0 
    matches = ""

    for time in range(len(students_aor)):
        if students_aor[time].time == term:
            counter += 1
            matches += students_aor[time].name + " "
    
    print("Time " + str(term) + " appeared "+ str(counter) + " times. Students: " + matches )

students_aor = readfile()
find_max(students_aor)
find_min(students_aor)
linear_search(students_aor, int(input("Enter time to count: ")))
count_occurrences(students_aor, int(input("Enter time to count: ")))

