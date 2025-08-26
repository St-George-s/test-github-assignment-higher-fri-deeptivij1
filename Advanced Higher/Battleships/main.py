# Can be -, M, H or S
import random

            #  1    2    3    4    5
grid =      [["-", "-", "-", "-", "-"], 
            ["-", "-", "-", "-", "-"], 
            ["-", "-", "-", "-", "-"], 
            ["-", "-", "-", "-", "-"], 
            ["-", "-", "-", "-", "-"]]

# 0 = horizontal and 1 = vertical
shipDirection = random.randint(0,1)
if shipDirection == 0:
    shipColumn = random.randint(0,2)
    shipRow = random.randint(0,4)
    grid[shipRow][shipColumn] = "S"
    grid[shipRow][shipColumn + 1] = "S"
    grid[shipRow][shipColumn + 2] = "S"

if shipDirection == 1:
    shipRow = random.randint(0,2)
    shipColumn = random.randint(0,4)
    grid[shipRow][shipColumn] = "S"
    grid[shipRow + 1][shipColumn] = "S"
    grid[shipRow + 2][shipColumn] = "S"

print(grid)
    
    



    


hits = 0

while hits < 3:
    guess = input("Enter row & column 1-5: ")
    row = int(guess[0]) - 1
    column = int(guess[1]) - 1
    print(guess)

    if grid[row][column] == "S":
        print("You hit the ship.")
        grid[row][column] = "H"
        hits = hits + 1

    elif grid[row][column] == "-":
        print("You missed the ship!")
        grid[row][column] = "M"

    elif grid[row][column] == "M" or grid[row][column] == "H":
        print("You have already guessed this. Try again.")
    
    # print(grid)


print("Well done! You sunk the ship.")
print(grid)

