import csv

class Country:
    # Rank,Country,Country Code,Gold,Silver,Bronze,Total
    def _init_( rank, country, code, gold, silver, bronze, total):
        self.rank = rank
        self.country = country
        self.code = code
        self.gold = gold
        self.silver = silver
        self.bronze = bronze
        self.total = total

def readDataFromFile():
    fileName = "starters/Olympics/olympics2024.csv"
    countries = []
    with open(fileName, "r") as file:
        reader = csv.reader(file)
        next(reader)
        for line in reader:
            rank = line[0]
            country = line[1]
            code = line[2]
            gold = int(line[3])
            silver = int(line[4])
            bronze = int(line[5])
            total = int(line[6])
            countries.append(Country(rank, country, code, gold, silver, bronze, total))
    return countries

# Total Medal Calculation Feature:
# We require a feature that calculates the overall number of medals awarded across all countries. This will sum up the total medals for every participating country and output a final cumulative number.
# You should print the total medals awarded across all countries.
def totalMedals(countries):
    total = 0
    for country in countries:
        total += country.total
    print("Total Medals:", total)

# Top Country Identification Feature:
# The system must include a feature to identify and display which country has secured the most medals overall. This will involve comparing the total medal count across all countries and outputting the country with the highest total.
# A text report (topCountries.txt) listing countries that have won more than 30 gold medals, along with their respective gold medal counts should be created.
def topCountry(countries):
    top = countries[0]
    for country in countries:
        if country.total > top.total:
            top = country
    print("Top Country:", top.country)

# Gold Medal Report Feature:
# We need a feature that generates a report listing the countries with more than 30 gold medals. This report will be output as a text file and must clearly state the country name and the number of gold medals they’ve won.
# You should print the country with the highest number of medals.
def goldMedalReport(countries):
    with open("starters/Olympics/topCountries.txt", "w") as file:
        for country in countries:
            if country.gold > 30:
                file.write(f"{country.country}: {country.gold}\n")

def main():
    countries = readDataFromFile()
    totalMedals(countries)
    topCountry(countries)
    goldMedalReport(countries)

main()