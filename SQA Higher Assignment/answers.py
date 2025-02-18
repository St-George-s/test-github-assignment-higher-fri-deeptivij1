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

# Read data from file into an array of records
def readData():
    orders = []

    with open("SQA Higher Assignment/orders.txt", "r") as file:
        reader = csv.reader(file) # Reading from CSV
        for row in reader:
            # Creates an order object for each row of info + adds it to array of records
            order_row = order(row[0], row[1], row[2], row[3], row[4], int(row[5])) 
            orders.append(order_row)

    return orders

# Find position of winning customer
def findWinningPosition(orders):
    position = -1
    index = 0
    search_month = input("Enter the first three letters of the month to search: ")
    while position == -1 and index < len(orders): 
        if search_month in orders[index].date and orders[index].rating == 5: #if current month matches search month AND rating is 5
            position = index # set position of winner to current index
        index = index + 1

    return position

# Write details of winning customer to text file
def writeWinningCustomer(orders, position):
    with open("SQA Higher Assignment/winningCustomer.txt", "w") as file:
        if position >= 0:
            file.write(orders[position].orderNum, orders[position].email, orders[position].cost)




# example COMMENT WRITEWINNINGCUSTOMER FUNCTION
        for order in orders:
            if int(order.id) % 5 == 0:
                file.write(order.id + "-" + order.product[:3] + "-DISCOUNT CODE ASSIGNED" + "\n")
            else:
                file.write(order.id + "-" + order.product[:3] + "-NO DISCOUNT" + "\n")



# Main
orders = readData() # orders array of records made
position = findWinningPosition(orders)
