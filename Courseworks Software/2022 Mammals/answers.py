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

    with open("Courseworks Software/2022 Mammals/mammals.txt", 'r') as file:
        reader = csv.reader(file) #Reading from CSV 
        for row in reader:
            # Creates a sighting object for each row of info 
            # + adds it to array of records
            sighting_row = sighting(row[0], row[1], row[2], int(row[3]))
            sightings.append(sighting_row)

    return sightings

def findOldest(sightings):
    maxSighting = sightings[0] # setting highest sighting to whole of record 1
    for sighting in sightings:
        if sighting.age > maxSighting.age: #if current walker age > oldest walking age 
            maxSighting = sighting # change the max record to the current record

    print(maxSighting.age) # just print age of record

def upperCase(word):
    firstChar = ord(word[0])
    if firstChar >= 97 and firstChar <= 122:
        firstChar = firstChar - 32
        word = chr(firstChar) + word[1:]
        print(word)
    return word



def displayDates(sightings):
    town = input("Enter town: ")


def numSightings(sightings):
    pass


# sightings = readData()
# findOldest(sightings)

upperCase("hello")