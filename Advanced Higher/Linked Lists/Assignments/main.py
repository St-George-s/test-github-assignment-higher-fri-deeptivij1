from taskList import TaskList
from taskNode import TaskNode

tasks = TaskList()
tasks.add_task("Maths", "Finish worksheet", "2025-06-20")
tasks.add_task("English", "Read Chapter 5", "2025-06-19")
tasks.add_task("Computing", "Finish coding exercise", "2025-06-29")
tasks.complete_task()
tasks.complete_task()
tasks.print_tasks()
tasks.count_tasks()