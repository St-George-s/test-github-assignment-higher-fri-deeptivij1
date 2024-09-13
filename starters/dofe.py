import random

def generate_username(first_name, last_name):
    username = (first_name[:3] + last_name[:3])
    username = username + str(random.randint(100,999))
    return username
    


#main

first_name = input("Enter your first name: ")
last_name = input("Enter your last name: ")
age = input("Enter your age: ")
level = input("Enter your level (Bronze/Silver/Gold): ")


username = generate_username(first_name, last_name)
print(username)
