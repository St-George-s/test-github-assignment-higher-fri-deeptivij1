CREATE TABLE Photographers (
  photographer_id INT PRIMARY KEY,
  name VARCHAR(100),
  experience_years INT
);

CREATE TABLE Photos (
  photo_id INT PRIMARY KEY,
  title VARCHAR(100),
  photographer_id INT,
  date_taken DATE,
  category VARCHAR(50),
  FOREIGN KEY (photographer_id) REFERENCES Photographers(photographer_id)
);

CREATE TABLE Clients (
  client_id INT PRIMARY KEY,
  name VARCHAR(100),
  contact_info VARCHAR(100)
);

CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  client_id INT,
  photographer_id INT,
  date_booked DATE,
  event_type VARCHAR(50),
  FOREIGN KEY (client_id) REFERENCES Clients(client_id),
  FOREIGN KEY (photographer_id) REFERENCES Photographers(photographer_id)
);

-- Inserting Photographers
INSERT INTO Photographers VALUES (1, 'Alice Smith', 2);
INSERT INTO Photographers VALUES (2, 'Bob Jones', 4);
INSERT INTO Photographers VALUES (3, 'Carol White', 1);
INSERT INTO Photographers VALUES (4, 'Dave Brown', 6);

-- Inserting Photos
INSERT INTO Photos VALUES (1, 'Mountain Sunrise', 1, '2023-01-10', 'Nature');
INSERT INTO Photos VALUES (2, 'City Lights', 2, '2023-02-15', 'Urban');
INSERT INTO Photos VALUES (3, 'Spring Bloom', 3, '2023-03-20', 'Nature');
INSERT INTO Photos VALUES (4, 'Autumn Forest', 1, '2023-04-25', 'Nature');
INSERT INTO Photos VALUES (5, 'Winter Stars', 4, '2023-05-10', 'Night Sky');

-- Inserting Clients
INSERT INTO Clients VALUES (1, 'John Doe', 'johndoe@example.com');
INSERT INTO Clients VALUES (2, 'Jane Roe', 'janeroe@example.com');
INSERT INTO Clients VALUES (3, 'Mick Blue', 'mickblue@example.com');
INSERT INTO Clients VALUES (4, 'Lara Croft', 'laracroft@example.com');

-- Inserting Bookings
-- For 2024, only Clients 1 and 2 have bookings
INSERT INTO Bookings VALUES (1, 1, 2, '2024-05-01', 'Wedding');
INSERT INTO Bookings VALUES (2, 2, 2, '2024-06-15', 'Corporate Event');
-- Past booking in 2023, to make sure it does not appear in 2024's results
INSERT INTO Bookings VALUES (3, 3, 1, '2023-07-20', 'Birthday Party');
-- Future bookings for next 30 days, only Photographer 2 is booked
INSERT INTO Bookings VALUES (4, 4, 2, CURRENT_DATE + INTERVAL '20 days', 'Wedding');
