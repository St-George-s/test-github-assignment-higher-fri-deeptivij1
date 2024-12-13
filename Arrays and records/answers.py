# Task 1:
frame_sizes = [4, 3, 8]
print(frame_sizes)

# Task 2:
brand = ["Giant", "Trek"]
model = ["Escape 2", "Marlin 5"]
frame_size = [20,22]
type = ["Hybrid", "Mountain"]
price = [450.00, 370.00]
electric_assist = [False, False]

# Task 3:
class Car:
    def __init__(self, colour):
        self.colour = colour
    
car1 = Car("yellow")
print(car1.colour)

# Task 4:   
car1 = Car("red", "Audi", "2020", 20000)
car2 = Car("yellow", "Porsche", "2019", 50000)
car3 = Car("blue", "Ford", 2024, 10,000)

# Task 5
cars = [
    Car("red", "Audi", "2020", 20000),
    Car("yellow", "Porsche", "2019", 50000),
    Car("blue", "Ford", 2024, 10000)
    ]

#printing all details
for x in range(len(cars)):
    print(cars[x].colour)
    print(cars[x].make)
    print(cars[x].year)
    print(cars[x].price)
    print()

 



