-- Inner Query
SELECT MAX(date_taken)
FROM Photos;

-- Outer Query
SELECT title, date_taken
FROM Photos
WHERE date_taken IN (
  SELECT MAX(date_taken)
  FROM Photos
);