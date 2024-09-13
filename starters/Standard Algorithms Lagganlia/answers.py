# Task 1

times_spent = [5, 3, 4, 6, 5]

def find_max():
    max = times_spent[0]
    for time in times_spent:
        if time > max:
            max = x 
    print("The maximum time spent was ", max, " hours")

def find_min():
    min = times_spent[0]
    for time in times_spent:
        if time < min:
            min = x 
    print("The minimum time spent was ", min, " hours")

def linear_search(times_spent, term):
    found = False
    counter = 0 
    while counter < len(times_spent) and not found:
        if times_spent[counter] == term:
            found = True
        else:
            counter +=1
    
    if found:
        print(str(term) + " was found at postion " + str(counter+1))
    else:
        print("Item not found.")


def count_occurrences():
    pass

linear_search(times_spent, int(input("Enter search term: ")))
