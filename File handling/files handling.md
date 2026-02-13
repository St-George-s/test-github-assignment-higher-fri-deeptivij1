# **Worksheet: Reading Data from CSV Files into Parallel Arrays and Arrays of Records**

---

## **Learning Outcomes**
1. **1.5.1.5** - File handling: sequential CSV and txt files (open, create, read, write, close)
2. **1.5.1** - Describe, exemplify, and implement the appropriate constructs in a procedural high-level (textual) language.
3. **1.5.2** - Read and explain code that makes use of computational constructs.

---

## **Introduction to File Handling**

### **Why Work with Files?**

Working with files allows us to store, process, and manage data efficiently. Files are essential for:
- **Data storage** and **backup**.
- **Logging** system events.
- **Importing/exporting datasets**.
- **Generating reports** and managing databases.

---

### **Key File Operations**

- **Opening and Closing Files**: Files must be opened for reading/writing and closed after operations are complete.
- **Writing to Files**: Data can be written to a file using the `write` method.
  
  ```python
  with open('example.txt', 'w') as file:
      file.write("Hello, World!")
  ```
  
- **Reading from Files**: Data can be read from a file line by line or all at once.

  ```python
  with open('example.txt', 'r') as file:
      for line in file:
          print(line)
  ```

---

## **Handling CSV Files**

### **What is a CSV?**

- A **CSV (Comma-Separated Values)** file stores tabular data, where each row corresponds to a record, and each value is separated by a comma.
  
### **Python’s CSV Library**

Python’s built-in `csv` library allows you to work with CSV files efficiently. It provides functionality for reading and writing CSV files.

---

### **Basic CSV Operations**

#### **Reading from a CSV File**

```python
import csv

with open('data.csv', 'r') as file:
    reader = csv.reader(file)
    header = next(reader)  # Skips the header
    for row in reader:
        print(row)  # Prints each row
```

#### **Writing to a CSV File**

```python
import csv

with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["Name", "Age"])
    writer.writerow(["Alice", 25])
```

---

## **Task 1: Reading from a CSV into Parallel Arrays**

### **Example: Parallel Arrays**

We can store data from a CSV file into parallel arrays. Each array will hold a specific field from the data, and the corresponding indices in each array relate to the same record.

### **Code Example: Reading Data into Parallel Arrays**

```python
import csv

# Declare parallel arrays
entryID = []
location = []
forename = []
surname = []
jumps = []

# Function to read CSV data into parallel arrays
def getQualifyingData():
    with open("athletes.csv", "r") as file:
        reader = csv.reader(file)
        header = next(reader)  # Skip the header if it exists
        for row in reader:
            # Append data to parallel arrays
            entryID.append(row[0])
            location.append(row[1])
            forename.append(row[2])
            surname.append(row[3])
            jumps.append(int(row[4]))  # Convert jumps to integers

    return entryID, location, forename, surname, jumps

# Call the function
entryID, location, forename, surname, jumps = getQualifyingData()
```

### **Task:**
- Write a Python program that reads a CSV file (`students.csv`) containing the following fields: **studentID**, **firstName**, **lastName**, **grade**.
- Store the data in parallel arrays for each field.
- Print the data from each array to verify the result.

---

## **Task 2: Reading Data into Arrays of Records**

Once you've mastered parallel arrays, it's time to manage data using **arrays of records**. Each record can be thought of as an object or dictionary that holds multiple pieces of related data.

### **Step-by-Step:**

1. Create a **class** for each record, where each field of data (e.g., studentID, firstName) is an attribute.
2. Read the CSV file and create an array (list) of records.

---

### **Example: Reading Data into Arrays of Records**

```python
import csv

# Define the Athlete class
class Athlete:
    def __init__(self, entryID, location, forename, surname, jumps):
        self.entryID = entryID
        self.location = location
        self.forename = forename
        self.surname = surname
        self.jumps = jumps

# Read data from CSV and store in an array of Athlete records
def readAthleteData():
    athletes = []
    with open("athletes.csv", "r") as file:
        reader = csv.reader(file)
        header = next(reader)  # Skip the header
        for row in reader:
            # Create an Athlete object for each row and add it to the list
            athlete = Athlete(row[0], row[1], row[2], row[3], int(row[4]))
            athletes.append(athlete)
    
    return athletes

# Call the function and store the athletes
athletes = readAthleteData()

# Print the data of the first athlete
print(athletes[0].forename, athletes[0].surname, athletes[0].jumps)
```

### **Task:**
- Modify the program to read data from `students.csv` into an **array of records**. Each record should store the fields: **studentID**, **firstName**, **lastName**, and **grade**.
- Print the data of the first student to verify the result.

