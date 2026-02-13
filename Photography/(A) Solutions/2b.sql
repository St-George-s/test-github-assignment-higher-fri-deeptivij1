SELECT photographer_id
FROM Bookings;

SELECT name 
FROM Photographers
WHERE photographer_id NOT IN (
  SELECT photographer_id
  FROM Bookings
);