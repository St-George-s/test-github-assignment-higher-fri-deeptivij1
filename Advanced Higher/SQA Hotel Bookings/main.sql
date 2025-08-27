-- CREATE DATABASE TravelAgencyAugust;


-- CREATE TABLE Resort (
-- 	resortID int NOT NULL PRIMARY KEY,
-- 	resortName varchar(20) NOT NULL,
-- 	resortType varchar(20) NOT NULL
-- );


-- CREATE TABLE Hotel (
-- 	hotelRef varchar(4) NOT NULL PRIMARY KEY,
-- 	hotelName varchar(20) NOT NULL,
-- 	resortID int NOT NULL,
-- 	starRating int NOT NULL,
-- 	seasonStartDate date,
-- 	mealPlan varchar(17) NOT NULL,
-- 	checkInTime time NOT NULL,
-- 	pricePersonNight float(6,2) NOT NULL,
-- 	FOREIGN KEY (resortID) REFERENCES Resort(resortID)
-- );


-- CREATE TABLE Customer (
-- 	customerNo int AUTO_INCREMENT PRIMARY KEY,
-- 	firstname varchar(20) NOT NULL,
-- 	surname varchar(20) NOT NULL,
-- 	address varchar(40) NOT NULL,
-- 	town varchar(20) NOT NULL,
-- 	postcode varchar(8) NOT NULL
-- );


-- CREATE TABLE Booking (
-- 	hotelRef varchar(4) NOT NULL,
-- 	customerNo int NOT NULL,
-- 	startDate date NOT NULL,
-- 	numberNights int NOT NULL,
-- 	numberInParty int NOT NULL,
-- 	PRIMARY KEY (customerNo, hotelRef, startDate),
-- 	FOREIGN KEY (customerNo) REFERENCES Customer(customerNo),
-- 	FOREIGN KEY (hotelRef) REFERENCES Hotel(hotelRef)
-- );


-- INSERT INTO Resort VALUES (168, "Ayr", "coastal");
-- INSERT INTO Resort VALUES (212, "Fort William", "coastal");
-- INSERT INTO Resort VALUES (234, "Lochwinnoch", "country");
-- INSERT INTO Resort VALUES (347, "Portree", "island");
-- INSERT INTO Resort VALUES (406, "Glasgow", "city");

-- INSERT INTO Hotel (hotelRef, hotelName, resortID, starRating, mealPlan, checkInTime, pricePersonNight) VALUES ("AY19", "Glee Hotel", 168, 2, "Full Board","15:00:00", 85.50);
-- INSERT INTO Hotel VALUES ("AY72", "Lang Scots", 168, 3, "2019-04-27", "Half Board","14:30:00", 58.99);
-- INSERT INTO Hotel (hotelRef, hotelName, resortID, starRating, mealPlan, checkInTime, pricePersonNight) VALUES ("FW01", "The Fort", 212, 3, "Half Board","15:30:00", 125.37);
-- INSERT INTO Hotel (hotelRef, hotelName, resortID, starRating, mealPlan, checkInTime, pricePersonNight) VALUES ("FW02", "Willowbank", 212, 4, "Room Only","16:30:00", 69.95);
-- INSERT INTO Hotel VALUES ("FW03", "Nevis Hotel", 212, 3, "2019-02-02", "Half Board","15:30:00", 101.10);
-- INSERT INTO Hotel VALUES ("GL13", "Kelvin Park View", 406, 4, "2019-05-18", "Bed and Breakfast","15:30:00", 123.50);
-- INSERT INTO Hotel (hotelRef, hotelName, resortID, starRating, mealPlan, checkInTime, pricePersonNight) VALUES ("GL31", "Finnieston Wave", 406, 3, "Room Only","16:00:00", 87.45);
-- INSERT INTO Hotel VALUES ("PR04", "Bay View", 347, 5, "2019-05-03", "Bed and Breakfast", "16:00:00", 179.00);

-- INSERT INTO Customer VALUES (111, "Pam", "Shawfair", "7 Elmtree Way", "Paisley", "PA1 9GP");
-- INSERT INTO Customer VALUES (290, "Jim", "Thomson", "64 Main Road", "Hamilton", "ML11 1SW");
-- INSERT INTO Customer VALUES (315, "Edwina", "Jones", "121 Main Street", "Greenock", "PA16 1JK");
-- INSERT INTO Customer VALUES (426, "Omar", "Sharif", "31 Pike Place", "Perth", "PH31 3K");
-- INSERT INTO Customer VALUES (428, "Max", "Lowden", "5 Admiral Way", "Gourock", "PA19 1UX");
-- INSERT INTO Customer VALUES (457, "Pauline", "Sheriffhall", "34a Newton Road", "Dalkeith", "EH22 1FD");

-- INSERT INTO Booking VALUES ("FW02", 315, "2019-04-26", 2, 3);
-- INSERT INTO Booking VALUES ("AY72", 426, "2019-04-30", 7, 6);
-- INSERT INTO Booking VALUES ("AY19", 426, "2019-05-05", 7, 2);
-- INSERT INTO Booking VALUES ("PR04", 290, "2019-05-05", 2, 1);
-- INSERT INTO Booking VALUES ("PR04", 315, "2019-06-01", 3, 2);
-- INSERT INTO Booking VALUES ("AY72", 111, "2019-06-01", 5, 4);
-- INSERT INTO Booking VALUES ("PR04", 290, "2019-07-07", 7, 5);
-- INSERT INTO Booking VALUES ("GL31", 290, "2019-07-12", 1, 1);
-- INSERT INTO Booking VALUES ("AY19", 315, "2019-07-12", 4, 4);


-- -- Query 1
-- SELECT *
-- FROM Hotel;


-- -- Query 2
-- SELECT firstName, surname, SUM(pricePersonNight * numberNights * numberInParty) AS 'Total cost of all Bookings'
-- FROM Customer, Booking, Hotel
-- WHERE Customer.customerNo = Booking.customerNo
-- AND Booking.hotelRef = Hotel.HotelRef
-- GROUP BY firstName, surname
-- HAVING SUM(pricePersonNight * numberNights * numberInParty) >= 2000
-- ORDER BY SUM(pricePersonNight * numberNights * numberInParty) DESC;


-- -- Query 3
-- SELECT resortName, ROUND(AVG(pricePersonNight),2) AS 'Average Price'
-- FROM Resort, Hotel
-- WHERE Resort.resortID = Hotel.resortID
-- GROUP BY resortName
-- HAVING AVG(pricePersonNight) > 100;


-- -- Query 4
-- SELECT resortName, resortType, hotelName, mealPlan
-- FROM Resort, Hotel
-- WHERE Resort.resortID = Hotel.resortID
-- AND NOT resortType = "coastal";


-- -- Query 5
-- SELECT firstName, surname, COUNT(*) AS 'Total Bookings'
-- FROM Customer, Booking
-- WHERE Customer.customerNo = Booking.customerNo
-- GROUP BY surname, firstName
-- HAVING COUNT(*) BETWEEN 2 AND 4; 


-- -- Query 6
-- SELECT surname, postcode, town
-- FROM Customer
-- WHERE town BETWEEN "E" AND "M"
-- ORDER BY town;


-- -- Query 7
-- SELECT hotelName, mealPlan
-- FROM Hotel
-- WHERE mealPlan IN ("Room Only", "Half Board", "Full Board");


-- -- Query 8
-- SELECT resortName, resortType
-- FROM Resort
-- WHERE NOT resortType IN ("city", "country");


-- -- Query 9
-- SELECT hotelName, starRating, pricePersonNight
-- FROM Hotel
-- WHERE pricePersonNight = (SELECT MAX(pricePersonNight)FROM Hotel);


-- -- Query 10
-- SELECT resortName, hotelName, starRating
-- FROM Resort, Hotel
-- WHERE Resort.resortID = Hotel.resortID
-- AND starRating < 
-- 	(SELECT AVG(starRating)FROM Hotel);


-- -- Query 11
-- SELECT firstName, surname, postcode
-- FROM Customer, Booking
-- WHERE Customer.customerNo = Booking.customerNo
-- AND NOT Customer.customerNo = 111
-- AND hotelRef =
-- 	(SELECT hotelRef FROM Booking
-- 	WHERE customerNo = 111);


-- -- Query 12
-- SELECT hotelName, starRating
-- FROM Hotel
-- WHERE hotelName IN 
-- 	(SELECT hotelName FROM Hotel, Booking
-- 	WHERE Hotel.hotelRef = Booking.hotelRef
-- 	AND customerNo = 315);


-- -- Query 13
-- SELECT resortName, resortType
-- FROM Resort
-- WHERE resortName NOT IN
-- 	(SELECT resortName FROM Resort, Hotel, Booking
-- 	WHERE Resort.resortID = Hotel.resortID AND Hotel.hotelRef 	= Booking.hotelRef
-- 	AND customerNo = 315);


-- -- Query 14
-- SELECT customerNo, Hotel.hotelRef, (pricePersonNight*numberNights*numberInParty) AS 'Booking Cost'
-- FROM Booking, Hotel
-- WHERE Booking.hotelRef = Hotel.hotelRef
-- AND pricePersonNight*numberNights*numberInParty > ANY
-- (SELECT pricePersonNight*numberNights*numberInParty
-- 	FROM Booking, Hotel, Customer
-- 	WHERE Booking.hotelRef = Hotel.hotelRef
-- 	AND Booking.customerNo=Customer.customerNo
-- 	AND surname IN ("Sheriffhall", "Lowden", "Shawfair"));


-- -- Query 15
-- SELECT hotelname, mealPlan, starRating, resortName
-- FROM Hotel, Resort
-- WHERE Hotel.resortID = Resort.resortID
-- AND starRating = 3
-- AND EXISTS
-- 	(SELECT * FROM Booking
-- 	WHERE Booking.hotelRef = Hotel.hotelRef)
-- ORDER BY mealPlan ASC;


-- -- Query 16
-- SELECT firstName, surname, address
-- FROM Customer
-- WHERE NOT EXISTS
-- 	(SELECT * FROM Booking
-- 	WHERE Customer.customerNo = Booking.customerNo);


-- -- Query 17
-- SELECT hotelName, starRating, SUM(numberNights*numberInParty) AS'Nights x Number in Party'
-- FROM Hotel, Booking
-- WHERE Hotel.hotelRef= Booking.HotelRef
-- AND numberNights*numberInParty >
-- 	(SELECT SUM(numberNights*numberInParty) FROM Booking
-- 	WHERE customerNo =290)
-- AND starRating <
-- 	(SELECT MAX(starRating) FROM Hotel)
-- GROUP BY hotelName, starRating
-- ORDER BY starRating;


-- -- Query 18 
-- DROP TABLE Booking;