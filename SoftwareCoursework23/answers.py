# Part B 
# 1c(i) + (ii)

import csv 

# Read data from file into parallel arrays
def readFile():
    with open("Mock Coursework 23/attractions.csv", 'r') as file:
        attraction = []
        category = []
        visitors = []
        daysOpen = []
        height = []

        reader = csv.reader(file)
        for row in reader:
            attraction.append(row[0])
            category.append(row[1])
            visitors.append(int(row[2]))
            daysOpen.append(int(row[3]))
            height.append(row[4])
    
    return(attraction, category, visitors, daysOpen, height)


def least_visited(attraction, visitors):
    names = "" # names of lowest attraction(s)
    min = visitors[0]
    
    for index in range(1, len(visitors)):
        if visitors[index] < min:
            min = visitors[index]
            names = attraction[index]
        elif visitors[index] == min:
            names = names + ", " + attraction[index] #if two have same lowest value, then add on
        
    print("The least visited attraction(s): " + names)

def most_visited(attraction, visitors):
    names = "" # names of highest attraction(s)
    max = visitors[0]
    for ride in range(1, len(visitors)):
        if visitors[ride] > max:
            max = visitors[ride]
            names = attraction[ride]
        elif visitors[ride] == max:
            names = names + ", " + attraction[ride]
        
    print("The most visited attraction(s): " + names)

def servicing(attraction, category, daysOpen):
    with open('Mock Coursework 23/service.csv', 'w') as file:
        writer = csv.writer(file)
        for index in  range(len(attraction)):
            if category[index] == "Roller Coaster":
                days = daysOpen[index] % 90
                if (90-days) <= 7:
                    writer.writerow([attraction[index]])

def check_height(height):
    count = 0
    for currentHeight in height:
        if str(currentHeight[0]) == "1":
            count += 1
    print(count)



attraction, category, visitors, daysOpen, height = readFile() # assigning multiple returned arrays to use later
least_visited(attraction, visitors)
most_visited(attraction, visitors)
servicing(attraction, category, daysOpen)
check_height(height)