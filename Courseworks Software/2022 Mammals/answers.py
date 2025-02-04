# Part B 
# 1c
import csv # MAKE SURE TO IMPORT TO READ

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
        reader = csv.reader(file) #Reading from CSV (don't need to skip header but might have to)
        for row in reader:
            # Creates a sighting object for each row of info 
            # + adds it to array of records
            sighting_row = sighting(row[0], row[1], row[2], int(row[3])) # Check for any integers
            sightings.append(sighting_row)

    return sightings

# Find and display oldest walker's age
def findOldest(sightings):
    maxSighting = sightings[0] # setting highest sighting to whole of record 1
    for sighting in sightings:
        if sighting.age > maxSighting.age: #if current walker age > oldest walking age 
            maxSighting = sighting # change the max record to the current record

    print(maxSighting.age) # just print age of record

# Function to convert word into word starting with upper-case character
def upperCase(word):
    firstChar = ord(word[0])
    if firstChar >= 97 and firstChar <= 122: # if firstChar is uppercase, make it lowercase
        firstChar = firstChar - 32
        word = chr(firstChar) + word[1:] # can't overwrite string indexes - concatenation of character + rest of word
    
    return word

# Find and displays dates of sightings of chosen mammal and town
def displayDates(sightings):
    searchTown = input("Enter town: ") # gets searchTown
    searchTown = upperCase(searchTown) # uses function to convert searchTown into uppercase
    searchMammal = input("Enter mammal: ")
    searchMammal = upperCase(searchMammal)
    print("The dates of sightings were:")
    for sighting in sightings:
        if sighting.town == searchTown and sighting.mammal == searchMammal: # if these match
            print(sighting.date) # print the date and repeat loop

# Count and display sightings for each date in the file
def numSightings(sightings):
    dayToCount = sightings[0].date # sets first date in file to the one to be counted
    count = 1
    for index in range(1, len(sightings)): # loops over the rest
        if sightings[index].date == dayToCount: # if the date of the rest = the date currently counting
            count = count + 1 # add to count and move to next entry
        else:
            print(dayToCount + " " + str(count)) # if its a diff date, print the previous date and final count
            dayToCount = sightings[index].date # make the current date the new one to find
            count = 1
    
    print(dayToCount + " " + str(count)) # after it has looped over the last one, print it 


sightings = readData() # created array called sightings to pass into the rest of the functions
findOldest(sightings)
displayDates(sightings)
numSightings(sightings)
