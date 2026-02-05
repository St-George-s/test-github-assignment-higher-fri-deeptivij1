class TaskNode:
    def __init__(self, subject, description, due_date):
        self.subject = subject
        self.description = description
        self.due_date = due_date
        self.next = None
