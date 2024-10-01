import csv 

class Country:
    def __init__(self, rank, countryName, countryCode, gold, silver, bronze, total):
        self.rank = rank
        self.countryName = countryName
        self.countryCode = countryCode
        self.gold = gold
        self.silver = silver
        self.bronze = bronze
        self.total = total



def data_load():
    file = "starters/Olympics/olympics2024.csv"
    with open(file, 'r') as f:
        countries = [] # array of records
        reader = csv.reader(f) # premade reader using f to refer to file
        next(reader)
        for row in reader:
            country_row = Country(int(row[0]), row[1], row[2], int(row[3]), int(row[4]), int(row[5]), int(row[6])) 
            countries.append(country_row)

    return countries # returning an array of records where each item is an object


def total_medals(countries):
    total_medals = 0
    for country in countries:
        total_medals = total_medals + country.total
    
    return total_medals
    


def top_country(countries):
    maxC = countries[0]
    for country in countries:
        if country.total > maxC.total:
            maxC = country
            
    print(maxC.countryName + " has the highest medal count: " + str(maxC.total))
        

# Create a file
def gold_medal_report(countries):
    with open('starters/Olympics/goldCountries.txt', 'w') as file:
        for country in countries:
            if country.gold > 30:
                file.write(country.countryName + " " + str(country.gold) + "\n")


# main
countries = data_load()

total_medals = total_medals(countries)
print(total_medals)

top_country(countries)

gold_medal_report(countries)