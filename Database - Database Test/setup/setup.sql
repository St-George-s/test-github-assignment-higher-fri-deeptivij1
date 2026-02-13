CREATE TABLE Show (
    showID INT PRIMARY KEY,
    showName VARCHAR(100) NOT NULL,
    genre VARCHAR(50)
);

CREATE TABLE Timeslot (
    timeslotID INT PRIMARY KEY,
    airDate DATE NOT NULL,
    startTime TIME NOT NULL,
    endTime TIME NOT NULL,
    showID INT,
    FOREIGN KEY (showID) REFERENCES Show(showID)
);

CREATE TABLE Episode (
    episodeID INT PRIMARY KEY,
    episodeTitle VARCHAR(150) NOT NULL,
    episodeDate DATE NOT NULL,
    showID INT,
    maxViewers INT,
    FOREIGN KEY (showID) REFERENCES Show(showID)
);

CREATE TABLE ViewerRating (
    ratingID INT PRIMARY KEY,
    viewerName VARCHAR(100),
    episodeID INT,
    ratingDate DATE,
    ratingValue INT,
    FOREIGN KEY (episodeID) REFERENCES Episode(episodeID)
);

 
-- Insert into Show
INSERT INTO Show (showID, showName, genre) VALUES
(1, 'The Night Show', 'Talk Show'),
(2, 'Star Cooks', 'Cooking'),
(3, 'True Detect', 'Crime');

-- Insert into Timeslot
INSERT INTO Timeslot (timeslotID, airDate, startTime, endTime, showID) VALUES
(1, '2024-12-24', '20:00', '21:00', 1),
(2, '2024-12-25', '19:00', '20:30', 2),
(3, '2024-12-25', '21:00', '22:00', 3),
(4, '2024-12-24', '18:00', '19:00', 2);

-- Insert into Episode
INSERT INTO Episode (episodeID, episodeTitle, episodeDate, showID, maxViewers) VALUES
(1, 'Special Holiday Recap', '2024-12-24', 1, 5000),
(2, 'Festive Baking Finale', '2024-12-25', 2, 8000),
(3, 'Late Night Surprises', '2024-12-25', 1, 6000),
(4, 'Crime Under the Mistletoe', '2024-12-25', 3, 7000);

-- Insert into ViewerRating
INSERT INTO ViewerRating (ratingID, viewerName, episodeID, ratingDate, ratingValue) VALUES
(1, 'Alice Brown', 1, '2024-12-24', 8),
(2, 'Bob Smith', 1, '2024-12-24', 9),
(3, 'Carla Jones', 2, '2024-12-25', 7),
(4, 'David Green', 3, '2024-12-25', 6),
(5, 'Emma Davis', 4, '2024-12-25', 8);
