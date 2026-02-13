CREATE TABLE Shop (
    shopID INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE OpeningTime (
    openingID INT PRIMARY KEY,
    date DATE,
    openTime TIME,
    closeTime TIME,
    shopID INT,
    FOREIGN KEY (shopID) REFERENCES Shop(shopID)
);

CREATE TABLE Event (
    eventID INT PRIMARY KEY,
    eventName VARCHAR(100),
    eventDate DATE,
    shopID INT,
    maxAttendees INT,
    FOREIGN KEY (shopID) REFERENCES Shop(shopID)
);

CREATE TABLE Booking (
    bookingID INT PRIMARY KEY,
    customerName VARCHAR(100),
    eventID INT,
    bookingDate DATE,
    FOREIGN KEY (eventID) REFERENCES Event(eventID)
);

INSERT INTO Shop VALUES
(1, 'LEGO Store', 'Toys & Gifts'),
(2, 'Zara', 'Fashion & Clothing'),
(3, 'H&M', 'Fashion & Clothing'),
(4, 'John Lewis', 'Department Store'),
(5, 'Hotel Chocolat', 'Food & Drink'),
(6, 'Harvey Nichols', 'Luxury');

INSERT INTO OpeningTime VALUES
(1, '2024-12-24', '08:00', '18:00', 1),
(2, '2024-12-24', '08:00', '20:00', 2),
(3, '2024-12-25', '10:00', '16:00', 3),
(4, '2024-12-25', '10:00', '16:00', 4),
(5, '2024-12-24', '09:00', '18:00', 5),
(6, '2024-12-25', '09:00', '16:00', 6);

INSERT INTO Event VALUES
(1, 'LEGO Christmas Build', '2024-12-24', 1, 50),
(2, 'Festive Fashion Show', '2024-12-25', 2, 100),
(3, 'Kids Crafting Workshop', '2024-12-23', 3, 30),
(4, 'Winter Wonderland Sale', '2024-12-25', 4, 200),
(5, 'Chocolate Tasting Event', '2024-12-24', 5, 25),
(6, 'Luxury Christmas Gala', '2024-12-25', 6, 150);

INSERT INTO Booking VALUES
(1, 'Alice Frost', 1, '2024-12-10'),
(2, 'Jack Snow', 2, '2024-12-12'),
(3, 'Emma Noel', 3, '2024-12-14'),
(4, 'Chris Holly', 4, '2024-12-15'),
(5, 'Lisa Winter', 5, '2024-12-20'),
(6, 'Peter Yule', 6, '2024-12-22'),
(7, 'Sophie Claus', 1, '2024-12-23'),
(8, 'David Star', 4, '2024-12-24');
