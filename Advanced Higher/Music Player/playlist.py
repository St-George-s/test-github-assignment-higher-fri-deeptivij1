"""
Creating a blueprint for playlist objects
-
- 
"""

class PlayList():
    def __init__(self, tracks, playingTime, maxSize):
        self.tracks = tracks
        self.playingTime = playingTime
        self.maxSize = maxSize
        