DESCRIBE ALL TABLES;

-- 2c: lists initials, surnames, category, teamName and races won for each INDIVIDUAL swimmer
--  SELECT S.initial, S.surname, S.swimCategory, T.teamName, COUNT(*) AS [Races won]
--  FROM Swimmer S, Team T, Result R
--  WHERE S.swimmerID = R.swimmerID AND 
--  T.teamRef = S.teamRef AND 
--  position = 1
-- GROUP BY S.swimmerID
-- ORDER BY initial ASC;

-- 2d: finds swimmer who swan in lanes 1 or 8 in fastest time
-- Query 1: Find fastest swimmer in lanes 1 or 8
SELECT MIN(raceTime) AS [Fastest Time]
FROM Result
WHERE lane = 1 OR lane = 8;

SELECT S.intial, S.surname, T.teamName, E.city, E.eventDate
FROM Swimmer S, Team T, Event E
WHERE T.teamRef  = S.teamRef AND


