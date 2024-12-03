<<<<<<< HEAD
SELECT photographer_id FROM Photographers WHERE experience_years > 5;
=======
SELECT name
FROM Clients
WHERE client_id IN (
    SELECT client_id
    FROM Bookings
    WHERE event_type = 'Wedding'
);
>>>>>>> 6c99ea2 (Mock DB Test)
