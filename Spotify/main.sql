SELECT C.name 

FROM Clients C

WHERE client_id IN (SELECT client_id FROM Bookings WHERE event_type = "Wedding"); 