tempReadings = [3.1, 3.1, 3.1, 3.1, 3.2, 3.2, 3.3, 3.3, 3.4, 3.4]
readingDates = ["21Jan25", "11Feb25", "29Jan25", "7Feb25", "3Mar25", "14Feb25", "25Jan25", "10Feb25", "22Feb25", "6Mar25"]

def outputDuplicates(tempReadings, readingDates, middle, target):
    endIndex = middle
    startIndex = middle

    while tempReadings[startIndex - 1] == target:
        startIndex = startIndex - 1

    while tempReadings[endIndex +1] == target:
        endIndex = endIndex + 1

    for i in range(startIndex, endIndex + 1):
        print(readingDates[i], tempReadings[i])

    
outputDuplicates(tempReadings, readingDates, 4, 3.2 )