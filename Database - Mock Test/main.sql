-- -- 3.1 Write an SQL Query to list all events, hosting shop names, max attendees and date
SELECT E.eventName AS [Event Name], S.name AS [Shop Name], E.maxAttendees AS [Max Attendees], E.eventDate AS [Event Date]
FROM Event E, Shop S
WHERE E.shopID = S.shopID;

-- -- 3.2 Write an SQL query to retrieve all shops with events scheduled on 25th Dec
SELECT S.name AS [Shop Name], E.eventName AS [Event Name]
FROM Shop S, Event E
WHERE E.eventDate LIKE "%12-25" AND S.shopID = E.shopID;

-- 3.3 Write an SQL query to update the closing time for Zara on 24th of December to 19:00

UPDATE OpeningTime
SET closeTime = "19:00"
WHERE date LIKE "%12-24" 
AND shopID = (
SELECT shopID
FROM Shop
WHERE name = "Zara");


