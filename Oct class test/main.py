# Implementation Part B 
import csv 

# Reading data from CSV into 3 parallel arrays
def readGameDataFromCSV():
    gameTitles = []
    genres = []
    ageRatings = []

    with open("Oct class test/game_data.csv", 'r') as file:
        reader = csv.reader(file) # Reading from CSV
        next(reader)  # Skips the header
        for row in reader:
            gameTitles.append(row[0])
            genres.append(row[1])
            ageRatings.append(int((row[2])))

    return gameTitles, genres, ageRatings


# Counting number of games for u18s in specific genre
def countSuitableGames(genre_to_check, gameTitles, genres, ageRatings):
    count = 0
    for index in range(len(gameTitles)):
        if genres[index] == genre_to_check and ageRatings[index] < 18: #if both conditions true
            print(gameTitles[index]) 
            count += 1
    print(count)

# Main program
def main():
    gameTitles, genres, ageRatings = readGameDataFromCSV() # reads into arrays
    countSuitableGames("Fantasy", gameTitles, genres, ageRatings) # calls function with arrays and genre_to_check


main()
