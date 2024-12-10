# Part B 
# 1c
import csv 

# Defining sighting object
class sighting:
    def __init__(self, town, mammal, date, age):
        self.town = town
        self.mammal = mammal
        self.date = date
        self.age = age

# Read data from file into an array of records
def readData():
    sightings = []

    with open("SoftwareCoursework22/mammals.txt", 'r') as file:
        reader = csv.reader(file) #Reading from CSV 
        for row in reader:
            # Creates a sighting object for each row of info 
            # + adds it to array of records
            sighting_row = sighting(row[0], row[1], row[2], row[3])
            sightings.append(sighting_row)

    return sightings

def findOldest(sightings):
    pass

def displayDates(sightings):
    pass

def numSightings(sightings):
    pass


sightings = readData()
