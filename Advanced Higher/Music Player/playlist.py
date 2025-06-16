"""
Creating a blueprint for playlist objects
-
- 
"""
# How do you take the parameter of maxLength?
# self.newTrack.length ? does it check each one
class PlayList():
    def __init__(self, tracks, next, playingTime, maxSize):
        self.tracks = tracks
        self.next = next
        self.playingTime = playingTime
        self.maxSize = maxSize
    
    # Method to add a new track to the playlist if next is < max number allowed
    def addTrack(self):
        if self.next == self.maxLength:
            print("Error.")
        else:
            newTrack = self.tracks[self.next]
            self.next = self.next + 1
            self.playingTime = self.playingTime + self.newTrack.length

     # Method to add find a track in the playlist
    def findTitle(self):
        result = -1
        for index in range(self.maxSize - 1):
            if self.tracks[index].title 



    