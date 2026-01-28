"""
Creating a blueprint for track objects
- Title is a string
- Artist is a string
- Length is an integer
- 
"""
class Track:
    # Constructor - it is called when an object is created (L13)
    def __init__(self, title, artist, length):
        self.title = title
        self.artist = artist
        self.length = length
    
    # Method to print title and artist of an object
    def show_track(self):
        print(f"Title: {self.title} - Artist: {self.artist}")
        print(f"Length: {self.length // 60} mins {self.length % 60} secs")
    
    # Method to check if song is longer than 4 mins
    def isLong(self):
        if self.length > 240:
            print(True)
        else:
            print(False)