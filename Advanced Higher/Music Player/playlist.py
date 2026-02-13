
"""
Creating a blueprint for playlist objects
-
- 
"""
# How do you take the parameter of maxLength?
# self.newTrack.length ? does it check each one
class PlayList():
    def __init__(self, tracks, playingTime, maxSize):
        self.tracks = tracks
        self.playingTime = playingTime
        self.maxSize = maxSize
    
    # Method to add a new track to the playlist if next is < max number allowed
    def addTrack(self, track):
        if len(self.tracks) == self.maxSize:
            print("Error - too many tracks")

        else:
            self.tracks.append(track)
            self.playingTime = self.playingTime + track.length


     # Method to add find a track in the playlist
    def findTitle(self, trackTitle):
        result = -1
        for index in range(self.maxSize):
            if self.tracks[index].title == trackTitle:
                result = index
            
        return result
    
    # Method to delete a track from the playlist
    def deleteTrack(self, index):
        if index >= self.maxSize or index < 0:
            print("Error - invalid index")
        
        else:
            # Subtracts the length of song to remove from the playlist time
            self.playingTime = self.playingTime - self.tracks[index].length
            del(self.tracks[index])

    # Method to loop through playlist and display each track
    def showTracks(self):
        for counter in range(len(self.tracks)):
            self.tracks[counter].show_track()






    