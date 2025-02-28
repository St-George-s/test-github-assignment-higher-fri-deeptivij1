# Part C
# 1c
import csv

# Defining order object
class order:
    def __init__(self, orderNum, date, email, option, cost, rating):
        self.orderNum = orderNum
        self.date = date
        self.email = email
        self.option = option
        self.cost = cost
        self.rating = rating

# Read data from file into array of records
def readData():
    orders = []

    with open("Coursework 2025/Software/orders.txt", "r") as file:
        reader = csv.reader(file) # Reading from CSV
        for row in reader:
            # Creates an order object for each row of info + adds it to array of records
            order_row = order(row[0], row[1], row[2], row[3], row[4], int(row[5]))
            orders.append(order_row)

    return orders

# Find and return position of winning customer
def findWinningPosition(orders):
    position = -1
    index = 0
    search_month = input("Enter the first three letters of the month to search: ")
    while position == -1 and index < len(orders): 
        if search_month in orders[index].date and orders[index].rating == 5: # If current month matches search month AND rating is 5
            position = index # Set winner position to current index
        index = index + 1

    return position

# Write details of winning customer to text file
def writeWinningCustomer(orders, position):
    with open("Coursework 2025/Software/winningCustomer.txt", "w") as file: 
        if position >= 0: # If there is a winner (position > -1)
            file.write(orders[position].orderNum + "," + orders[position].email + "," + orders[position].cost) # Write details to file
        else:
            file.write("No winner")
    file.close()

# Count and return total orders of given option (delivery/collection)
def countOption(orders, searchOption):
    count = 0 
    for order in orders:
        if order.option == searchOption: # If order option matches option to be counted
            count = count + 1
    return count

# Display total number of orders delivered and collected
def displayTotalOrders(orders):
    delivered = countOption(orders, "Delivery") # Store returned count in variable
    collected = countOption(orders, "Collection")
    print("Total number of orders delivered to date: " + str(delivered))
    print("Total number of orders collected to date: " + str(collected))


# Main
orders = readData() # Array of records called orders made
position = findWinningPosition(orders)
writeWinningCustomer(orders, position)
displayTotalOrders(orders)