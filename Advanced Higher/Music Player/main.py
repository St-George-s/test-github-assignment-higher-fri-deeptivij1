from track import Track
from albumTrack import AlbumTrack

# Main
# Create instances of the object Track (calls constructor)
song = Track("Sultans of Swing", "Dire Straits", 127) 
song.show_track()
song.isLong()

fav = Track("Umbrella", "Rihanna", 245)
fav.show_track()
fav.isLong()

mySongFromAlbum = AlbumTrack("I love coding", "Mr Rodger", 234, "St G's for life")
mySongFromAlbum.show_track() # Still works because the method is inherited. 

""""
print(fav.getAlbum())  This does not work because get_album only exists on Track, not Album Track
"""