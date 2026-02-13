CREATE TABLE Tracks (
    track_id INT PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    artist_id INT,
    album_id INT,
    genre_id INT,
    duration_ms INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

INSERT INTO Tracks (track_id, track_name, artist_id, album_id, genre_id, duration_ms) VALUES 
(1, 'Yellow', 1, 1, 2, 266000), 
(2, 'Hello', 2, 2, 1, 295000), 
(3, 'Shape of You', 3, 3, 1, 263000);
