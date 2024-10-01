import csv 

class Order():
    def __init__(self, name, product, price):
        self.name = name
        self.product = product
        self.price = price


def readOrdersFromCSV():

    with open('Mock class test/orders.csv', 'r') as f:
        orders = [] # array of records
        reader = csv.reader(f) # premade reader using f to refer to file
        next(reader)
        for row in reader:
            order_row = Order(row[0], row[1], float(row[2]))
            orders.append(order_row)
    
    return orders

#finding max within array of records

def findMaxOrderWithTv(orders):
    maxOrder = orders[0] # setting highest order to whole of record 1
    for order in orders:
        if "TV" in order.product and order.price > maxOrder.price: #if current order is a TV and it's price > maxOrder price
            maxOrder = order # change the max record to the current record

    print(maxOrder.price) # just print price of max record

orders = readOrdersFromCSV()
findMaxOrderWithTv(orders)