# Implementation Part C
import csv


# Reading data from CSV into 4 parallel arrays
def readGameDataFromCSV():
    gameTitles = []
    genres = []
    ageRatings = []
    platforms = []

    with open("Oct class test/game_platform_data.csv", 'r') as file:
        reader = csv.reader(file) # Reading from CSV
        next(reader)  # Skips the header
        for row in reader:
            gameTitles.append(row[0])
            genres.append(row[1])
            ageRatings.append(int((row[2])))
            platforms.append(row[3])

    return gameTitles, genres, ageRatings, platforms


# Counting number of games for u18s in specific genre
def countSuitableGames(genre_to_check, gameTitles, genres, ageRatings):
    count = 0
    for index in range(len(gameTitles)):
        if genres[index] == genre_to_check and ageRatings[index] < 18: #if both conditions true
            print(gameTitles[index]) 
            count += 1
    print(count)


# Counting number of games for u18s in specific genre and platform
def countSuitableGamesPlatform(genre_to_check, platform_to_check, gameTitles, genres, ageRatings, platforms):
    with open("Oct class test/platform_suitable_games.txt", 'w') as file:
        for index in range(len(gameTitles)):
            if (genres[index] == genre_to_check and platforms[index] == platform_to_check) and ageRatings[index] < 18: #if all conditions true
                file.write(gameTitles[index] + " - " + platforms[index] + "\n") # write title and platform to new line


# Main program
def main():
    gameTitles, genres, ageRatings, platforms = readGameDataFromCSV() # reads into arrays
    countSuitableGames("Fantasy", gameTitles, genres, ageRatings) # calls function with arrays and genre_to_check
    countSuitableGamesPlatform("Fantasy", "Mobile", gameTitles, genres, ageRatings, platforms) # calls functions with arrays and genre_to_check and platform_to_check


main()
