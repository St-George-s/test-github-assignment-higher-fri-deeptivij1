class Ticket:
    def __init__(self, user, issue):
        self.user = user
        self.issue = issue
        self.next = None

class HelpDesk:
    def __init__(self):
        self.head = None
    
    def log_ticket(self,user,issue):
        new_ticket = Ticket(user,issue)
        new_ticket.next = self.head
        self.head = new_ticket
    
    def show_tickets(self):
        current = self.head
        while current is not None:
            print(f"{current.user} reported: {current.issue}")
            current = current.next

    # Changes the head to the next one - most recent is removed
    def resolve_ticket(self):
        self.head = self.head.next

    def 
hd = HelpDesk()
hd.log_ticket("deeptivij", "Wifi issues")
hd.log_ticket("fayealw", "Keyboard isn't working")
hd.log_ticket("v2957d", "Phone glitching")
hd.resolve_ticket()
hd.show_tickets()

