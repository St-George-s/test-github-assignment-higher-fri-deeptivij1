def get_destination():
    destination = input("Enter destination: ")
    return destination 

def get_number_of_people():
    num_people = int(input("Number of people going on the trip: "))
    return num_people

def get_travel_method():
    method = input("Enter method of travel: ")
    return method

def print_all_trips():
    for x in range(len(destinations)):
        print(destinations[x])
        print(people_counts[x])
        print(travel_methods[x])

#main
destination = ""
destinations = []
people_counts = []
travel_methods = []
local_dests = ["EDINBURGH", "ABERDEEN", "GLASGOW", "DUNDEE"]

while destination != "END":
    
    destination = get_destination()
    destinations.append(destination)
    num_people = get_number_of_people()
    people_counts.append(num_people)

    if destination.upper() in local_dests:
        method = "Local transport"
        travel_methods.append(method)
    else:
        method = get_travel_method()
        travel_methods.append(method)

print_all_trips()

