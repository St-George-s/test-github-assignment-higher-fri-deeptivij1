### Travel Questions
You are tasked with creating a Python program that collects and processes travel information using multiple subroutines. The program should continuously collect data until the user decides to stop. This task is divided into four parts, each introducing more complexity. Follow the specific instructions provided for each part, focusing on data flow, function design, and logic implementation. The main program should be structured with a comment `#main`, and only pass data out of a function if it is needed in another subroutine.

#### **Task 1: Simple Variables and Logic**
1. **Data Flow**: 
   - The program will start by prompting the user for a travel destination.
   - If the destination is "END", the program should terminate; otherwise, it will continue to collect more data.
2. **Functions and Procedures**: 
   - Create a **function** `get_destination()` that asks the user for the destination and returns the value to the main program.
   - Create a **function** `get_number_of_people()` that asks the user for the number of people going on the trip and returns this value.
   - Create a **function** `get_travel_method()` that asks the user for the method of travel and returns this value.
   - Design a **procedure** `print_travel_details(destination, people_count, travel_method)` to display the collected information. This procedure doesn't return data as its purpose is solely to display information.

   **Starter Code:**
   ```python
   def get_destination():
       return input("Enter the travel destination (type 'END' to stop): ")

   #main
   ```

#### **Task 2: More Complex Logic**
1. **Data Flow**: 
   - Modify the program’s flow to handle specific destinations differently. If the destination is local (e.g., "Edinburgh", "Glasgow", "Dundee", "Aberdeen"), the program **should skip** asking for the travel method.
   - If the destination is one of these local options, automatically set the travel method to "Local transport".
2. **Functions and Procedures**:
   - In the `main` section, after getting the destination and the number of people, check if the destination is "Edinburgh", "Glasgow", "Dundee", or "Aberdeen". If it is, skip the `get_travel_method()` call and directly set the travel method to "Local transport". Otherwise, call `get_travel_method()` to ask the user for input.

   **Starter Code:**
   ```python
   def get_destination():
       return input("Enter the travel destination (type 'END' to stop): ")

   def get_number_of_people():
       pass  # Implement this function

   def get_travel_method():
       pass  # Implement this function

   #main
   ```

#### **Task 3: Introduction of Arrays with Simple Logic**
1. **Data Flow**:
   - Store the travel details for all trips entered by the user in arrays (lists). Specifically, you will need three lists:
     - `destinations[]` for storing each destination entered.
     - `people_counts[]` for storing the number of people for each trip.
     - `travel_methods[]` for storing the travel method for each trip.
   - After each trip's information is collected, append the data to these respective lists.

2. **Functions and Procedures**:
   - Modify your main program to store the results of each trip in these lists. 
   - Implement a **procedure** `print_all_trips()` that iterates through the lists and prints out the details of each trip after the user decides to stop entering data.

   **Starter Code:**
   ```python
   #main
   ```

#### **Task 4: Complex Arrays and Logic**
1. **Data Flow**:
   - Add more complex data handling to your program. You will need to summarise and search through the trips stored in the lists.
2. **Functions and Procedures**:
   - Implement a **function** `summarise_trips()` that will:
     - Count and display the total number of trips.
     - Calculate and display the total number of people across all trips.
     - Identify and display the most common destination.
   - Implement a **function** `find_trip_by_destination(destination)` that will:
     - Take a destination as input.
     - Search the lists to find all trips to that destination.
     - Print out the details (number of people and travel method) for each matching trip.

   **Starter Code:**
   ```python
   def summarise_trips(destinations, people_counts, travel_methods):
       pass  # Implement this function

   def find_trip_by_destination(destination, destinations, people_counts, travel_methods):
       pass  # Implement this function

   #main
   ```

### Deliverables:
- Write the Python code for each part, ensuring that functions and procedures are used correctly.
- The main program should be commented as `#main`.
- Pass data out of functions only when it is needed in another subroutine.
- Test your program to ensure it handles various inputs and multiple trips effectively.