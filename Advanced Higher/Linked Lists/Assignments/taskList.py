from taskNode import TaskNode

class TaskList:
    def __init__(self):
        self.head = None

    def add_task(self, subject, description, due_date):
        new_node = TaskNode(subject, description, due_date)
        new_node.next = self.head
        self.head = new_node

    def print_tasks(self):
        current = self.head
        while current:
            print(f"{current.subject}: {current.description} (Due {current.due_date})")
            current = current.next

# Completes the first task (most recent) in the list
    def complete_task(self):
        if not self.head:
            print("No tasks to complete.")
            return 
        print(f"Completed: {self.head.subject} - {self.head.description}")
        self.head = self.head.next

    def count_tasks(self):
            current = self.head
            count = 0
            while current is not None:
                count += 1
                current = current.next
            print(f"There are {count} tasks")

