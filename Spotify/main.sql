SELECT MAX(Avg)
FROM
    (SELECT AVG(duration_ms) AS Avg
    FROM Tracks 
    GROUP BY album_id);