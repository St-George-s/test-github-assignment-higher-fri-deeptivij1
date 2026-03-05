class Ticket:
    def __init__(self, user, issue):
        self.user = user
        self.issue = issue
        self.next = None

class HelpDesk:
    def __init__(self):
        self.head = None
    
    # Ticket is new head and everything else moves back
    def log_ticket(self,user,issue):
        new_ticket = Ticket(user,issue)
        new_ticket.next = self.head
        self.head = new_ticket
    
    # Prints all tickets till current is empty
    def show_tickets(self):
        current = self.head
        while current is not None:
            print(f"{current.user} reported: {current.issue}")
            current = current.next

    # Changes the head to the next one - most recent is removed (v2957d)
    def resolve_ticket(self):
        self.head = self.head.next

    # Linear search through linked list for given user
    def search_ticket(self,user):
        current = self.head
        while current is not None:
            if current.user == user:
                print(f"User you searched for - {user} - reported {current.issue}")
            current = current.next

    # Counts how many tickets remain
    def count_tickets(self):
        current = self.head
        count = 0
        while current is not None:
            count += 1
            current = current.next
        print(f"There are {count} tickets")

hd = HelpDesk()
hd.log_ticket("deeptivij", "Wifi issues")
hd.log_ticket("fayealw", "Keyboard isn't working")
hd.log_ticket("v2957d", "Phone glitching")

hd.resolve_ticket() # Removes most recent
hd.show_tickets()
hd.search_ticket("deeptivij")
hd.count_tickets()

