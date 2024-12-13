# **Data Types & Structures Worksheet**

## **1.4 - Implementation of Data Types and Structures**

- **Describe**, **exemplify**, and **implement** the following structures: parallel 1D arrays, records, and arrays of records.

---

## **Understanding Data Structures**

In programming, we often need to store and manage complex data. This requires structures that can hold multiple values of different types. We begin by using **parallel arrays**, which store related data separately, and then move to **records**, which store related data together in one structure. Finally, we transition to **arrays of records**, which allow us to store multiple records in one array.

### **Why Custom Data Types?**

- **Efficiency**: Grouping related information helps us manage data more effectively.
- **Clarity**: Storing related data together makes the code easier to understand and maintain.

---

## **Step 1: Arrays of Single Data Types**

Before introducing parallel arrays, we first look at simple arrays, which hold values of the same data type. For example, you might want to store the **brands** of bicycles in a bike shop.

### **Example**:

```python
brands = ["Giant", "Trek", "Cannondale"]
```

### **Task 1**:

Create an array to store the **frame sizes** (in inches) of bicycles in a shop. Add three different frame sizes as integers. Print the array.

---

## **Step 2: Parallel Arrays**

Parallel arrays allow you to store related information separately. For example, you might store bicycle brands in one array and their corresponding frame sizes in another. Both arrays are **parallel**, as the information at index 0 in one array corresponds to the information at index 0 in the other array.

### **Example**:

```python
brands = ["Giant", "Trek"]
frame_sizes = [20, 22]
```

### **Task 2**:

A local bike shop maintains a stock of 50 bicycles. Sample data about the bicycles is shown below:

| Brand | Model    | Frame Size (inches) | Type     | Price (£) | Electric Assist |
| ----- | -------- | ------------------- | -------- | --------- | --------------- |
| Giant | Escape 2 | 20                  | Hybrid   | 450.00    | False           |
| Trek  | Marlin 5 | 22                  | Mountain | 370.00    | False           |

Using **parallel arrays**, store this information. Ensure that each array uses the correct data type.

---

## **Step 3: Introduction to Records**

Once parallel arrays become complex or grow too large, managing them can become confusing. A better solution is to store all the related information in one structure called a **record**. A record groups related information into one structure with multiple fields, each field representing a different data type.

### **The Concept of a Record**

- **A record** is a data type that holds a set of different data types in one structure.
- **Unlike parallel arrays**, records keep related data together, making it more efficient for sorting and managing.

### **Example in Pseudocode**:

```text
RECORD Bicycle IS {
    STRING brand,
    STRING model,
    INTEGER frame_size,
    STRING type,
    REAL price,
    BOOLEAN electric_assist
}
```

### **Records in Python**

In Python, a record can be represented as a class. Here's how you can define a **Bicycle** record:

```python
class Bicycle:
    def __init__(self, brand, model, frame_size, type, price, electric_assist):
        self.brand = brand
        self.model = model
        self.frame_size = frame_size
        self.type = type
        self.price = price
        self.electric_assist = electric_assist
```

### **Task 3**:

Create a class called **Car** with just one attribute, **colour**. Then create instances of cars with the colours "yellow", "red", and "blue". Print the colours of each car.

---

## **Step 4: Expanding the Record**

Now that you’ve created a simple record with one attribute, let’s expand the record to include more attributes, such as **make**, **year**, and **price**.

### **Task 4**:

Add the attributes **make**, **year**, and **price** to the **Car** class. Then create instances of cars with different makes, years, and prices.

---

## **Step 5: Arrays of Records**

Now that you’ve learned how to declare a record with multiple attributes, the next step is to manage multiple records together. This is where **arrays of records** come in. Instead of having parallel arrays for each attribute, we store all the data in one array, where each element is a **record**.

### **Example**:

Using the **Bicycle** class from above, you can create an array of bicycles:

```python
bicycles = [
    Bicycle("Giant", "Escape 2", 20, "Hybrid", 450.00, False),
    Bicycle("Trek", "Marlin 5", 22, "Mountain", 370.00, False)
]
```

### **Task 5**:

Using the **Car** class from earlier, create an array of car records. Each record should store the **make**, **year**, **price**, and **colour** of the car.

---

## **Recap of Concepts**

1. **Arrays of Single Data Types**: Storing related information in arrays (all elements of the same type).
2. **Parallel Arrays**: Storing related information in multiple arrays where the same index in each array corresponds to related data.
3. **Records**: Grouping related data into one structure that can hold multiple types.
4. **Arrays of Records**: Storing multiple records in one array, where each record holds various related fields.

---

# **Progressing from Arrays to Arrays of Records**

## **Assignment-Style Questions**

**Instructions**: Answer the questions below using Python or pseudocode. Start by working with arrays and records, and gradually progress to arrays of records.

### **1. Bicycle Shop Data**

A local bike shop maintains a stock of 50 bicycles. Sample data about the bicycles is shown below:

| Brand | Model    | Frame Size (inches) | Type     | Price (£) | Electric Assist |
| ----- | -------- | ------------------- | -------- | --------- | --------------- |
| Giant | Escape 2 | 20                  | Hybrid   | 450.00    | False           |
| Trek  | Marlin 5 | 22                  | Mountain | 370.00    | False           |

1. **(i) Parallel Arrays**  
   Using a suitable programming language, define **parallel arrays** for the bicycle data above, ensuring that the arrays use the correct data types for each piece of information.

### **2. Pet Shop Data**

A pet shop keeps records for the 30 types of pet food it stocks. Sample data about the pet foods is shown below:

| Brand    | Animal Type | Weight (kg) | Price (£) | In Stock |
| -------- | ----------- | ----------- | --------- | -------- |
| Purina   | Cat         | 1.5         | 24.99     | 10       |
| Pedigree | Dog         | 2.0         | 18.99     | 20       |

1. **(i) Record Structure**  
   Using a suitable programming language, create a **record structure** called **PetFood** to store the data for the pet foods. Each attribute should use the appropriate data type.

2. **(ii) Arrays of Records**  
   Using a programming language of your choice, declare a variable called **StockedPetFoods** which can store the details of 150 pet foods. Use the record structure created in part (i).

---

### **3. Craft Store Data**

A craft store has 200 different crafting materials in stock. Sample data about some of the materials is shown below:

| Material     | Colour | Quantity | Price per Unit (£) | Eco-friendly |
| ------------ | ------ | -------- | ------------------ | ------------ |
| Acrylic Yarn | Red    | 150      | 5.50               | True         |
| Beading Wire | Silver | 75       | 3.75               | False        |

1. **(i) Parallel Arrays**  
   Using a suitable programming language, define **parallel arrays** for the crafting material data.

---

### **4. Electronics Store Data**

An electronics store lists specifications for the 100 smartphones it offers. Sample data about the smartphones is shown below:

| Brand    | Model      | Storage | Price (£) | Waterproof |
| -------- | ---------- | ------- | --------- | ---------- |
| Samsung  | Galaxy S21 | 128GB   | 799.00    | True       |
| Apple    | iPhone 12  | 64GB    | 699.00    | False      |
| Motorola | Brick      | 500MB   | 50.50     | False      |

1. **(i) Parallel Arrays**  
   Using a suitable programming language, create **parallel arrays** to represent the smartphone data.

---

### **5. Library Book Catalogue**

A small community library is cataloguing its collection of 120 books. Sample data about the books is listed below:

| Title                 | Author            | Published Year | Genre       | Hardcover |
| --------------------- | ----------------- | -------------- | ----------- | --------- |
| To Kill a Mockingbird | Harper Lee        | 1960           | Fiction     | True      |
| Sapiens               | Yuval Noah Harari | 2011           | Non-Fiction | False     |

1. **(i) Parallel Arrays**  
   Using a suitable programming language, define **parallel arrays** for the library’s book catalogue.
