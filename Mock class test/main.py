# Arrays of records handling, reader csv, writing text file

import csv 

class Order():
    def __init__(self, id, name, product, amountSpent, category):
        self.id = id 
        self.name = name
        self.product = product
        self.amountSpent = amountSpent
        self.category = category
        


# reading into array of records from CSV
def readOrdersFromCSV():

    with open('Mock class test/ordersExtended.csv', 'r') as f:
        orders = [] # array of records
        reader = csv.reader(f) # premade reader using f to refer to file
        next(reader)
        for row in reader:
            order_row = Order(row[0], row[1], (row[2]), float(row[3]), row[4])
            orders.append(order_row)
    
    return orders

#finding max within array of records

def findMaxOrderWithTv(orders):
    maxOrder = orders[0] # setting highest order to whole of record 1
    for order in orders:
        if "TV" in order.product and order.amountSpent > maxOrder.amountSpent: #if current order is a TV and it's price > maxOrder price
            maxOrder = order # change the max record to the current record

    print(maxOrder.amountSpent) # just print price of max record

# writing into TXT file 
def findDiscounts(orders):
    with open('Mock class test/discounts.txt', 'w') as file:
        for order in orders:
            if int(order.id) % 5 == 0:
                file.write(order.id + "-" + order.product[:3] + "-DISCOUNT CODE ASSIGNED" + "\n")
            else:
                file.write(order.id + "-" + order.product[:3] + "-NO DISCOUNT" + "\n")



def main():
    orders = readOrdersFromCSV()
    findMaxOrderWithTv(orders)
    findDiscounts(orders)


main()