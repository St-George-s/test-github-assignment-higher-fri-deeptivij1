from track import Track
"""
Creating a blueprint AlbumTrack objects 
- Inherits Track
"""
class AlbumTrack(Track):
    def __init__(self, title, artist, length, album_name):
        super().__init__(title, artist, length) # Creates an instance of a Track object
        self.album_name = album_name # Also assigns an album name
    
    def get_album(self):
        return self.album_name
    
    def show_track(self):
        super().show_track() # Runs the show_track
        print(f"Album name: {self.album_name}") # And adds the printing of album name