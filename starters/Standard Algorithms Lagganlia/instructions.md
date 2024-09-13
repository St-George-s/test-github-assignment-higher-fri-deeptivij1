### **Worksheet: Exploring Standard Algorithms with Lagganlia Outdoor Centre**

#### **Task 1: Implement the Standard Algorithms for a Basic Array**
At Lagganlia Centre, there are five students who participated in different activities. The **times_spent** array contains the number of hours each student spent on their respective activity.

Use the following array of times spent on activities:
```python
times_spent = [5, 3, 4, 6, 5]
```

For each of the standard algorithms below, create a **procedure** that will:
- **Find Maximum**: Print the largest value from the array.
- **Find Minimum**: Print the smallest value from the array.
- **Linear Search**: Print whether a specific time value is found in the array.
- **Count Occurrences**: Print how many times a specific time value appears in the array.

**Expected Output for each algorithm:**
- **Find Maximum**: "The maximum time spent was 6 hours."
- **Find Minimum**: "The minimum time spent was 3 hours."
- **Linear Search**: "Time 5 hours was found in the array 2 times".
- **Count Occurrences**: "Time 5 hours appeared 2 times in the array."

1. Write a procedure for each algorithm.
2. Test each procedure using the provided array of times.
3. **Save your code** before moving on to Task 2.

---

#### **Task 2: Update Algorithms to Work with Parallel Arrays**
At Lagganlia, you now need to keep track of which student participated in which activity. You will work with **three parallel arrays**:
1. **Student Names**: `["Alice", "Ben", "Cara", "David", "Eva"]`
2. **Activities**: `["hillwalking", "canoeing", "climbing", "hillwalking", "canoeing"]`
3. **Times Spent**: `times_spent = [5, 3, 4, 6, 5]`

Copy and update your algorithms from Task 1 to:
- **Find Maximum**: Print the student’s name, activity, and the maximum time spent.
  - Expected Output: "The maximum time spent was X hours by Y during Z."
  
- **Find Minimum**: Print the student’s name, activity, and the minimum time spent.
  - Expected Output: "The minimum time spent was X hours by Y during Z."
  
- **Linear Search**: Find a specific time and print the student's name, activity, and whether the time is found.
  - Expected Output: "Time X hours was spent by Y during Z."

- **Count Occurrences**: Print how many times a specific time value appears, and list the students who spent that amount of time.
  - Expected Output: "Time X hours appeared Y times. Students: [A, B, C]"

1. Update your procedures to work across the **three parallel arrays**.
2. **Save your code** before continuing to the next task!

---

#### **Task 3: Introduce Arrays of Records**
Copy and update your algorithms to group each student's name, activity, and time spent into a **record structure** to manage this data more efficiently.

Update your algorithms to:
- Work with **arrays of records** where each record contains the student’s name, activity, and time.
- Implement the same functionality as in Task 2 but using a record called Student.

You will:
- Find the maximum and minimum times and print the corresponding student’s name and activity.
- Perform a linear search and count occurrences as you did in Task 2, but with the new structure.

1. Refactor your code to work with an array of records.
2. **Save your code** before moving on to Task 4!

---

#### **Task 4: Work with Larger Datasets (CSV Files)**
Now, you’ll manage a larger set of data. You’ll be provided with a **CSV file** containing detailed records of multiple students, their activities, and the time they spent on each activity at Lagganlia.

1. Write a Python function to **open and read** the CSV file.
2. Update your algorithms to work with the data from the CSV file.
3. Find and print the **maximum time**, **minimum time**, and count occurrences for specific times.
4. Output the results in the format used in the previous tasks (student names, activities, times).

You can download the CSV file from the following link:  
[Download Lagganlia Student Activities CSV](sandbox:/mnt/data/lagganlia_student_activities.csv)

---

### **Bonus Tips:**
- At each stage, make sure you understand how the data structures are being used.
- **Test your code frequently** as you increase the complexity of your algorithms.
- Always **save your code** before making major updates or changes.

--- 

This worksheet progressively introduces more complex data management tasks using Python, all while using real-world examples from Lagganlia Centre for Outdoor Education.