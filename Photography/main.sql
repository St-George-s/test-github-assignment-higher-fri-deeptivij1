<<<<<<< HEAD
<<<<<<< HEAD
SELECT photographer_id FROM Photographers WHERE experience_years > 5;
=======
=======
>>>>>>> 8255f73 (-)
SELECT name
FROM Clients
WHERE client_id IN (
    SELECT client_id
    FROM Bookings
    WHERE event_type = 'Wedding'
);
<<<<<<< HEAD
>>>>>>> 6c99ea2 (Mock DB Test)
=======
=======
SELECT photographer_id FROM Photographers WHERE experience_years > 5;
>>>>>>> 0c90161 (-)
>>>>>>> 8255f73 (-)
