DESCRIBE ALL TABLES;

-- 2c: lists initials, surnames, category, teamName and races won for each INDIVIDUAL swimmer
 SELECT S.initial, S.surname, S.swimCategory, T.teamName, COUNT(*) AS [Races won]
 FROM Swimmer S, Team T, Result R
 WHERE S.swimmerID = R.swimmerID AND 
 T.teamRef = S.teamRef AND 
 position = 1
GROUP BY S.swimmerID
ORDER BY initial ASC;

-- 2d: Finds swimmer who swan in lanes 1 or 8 in fastest time
Subquery: Finds fastest swimmer in lanes 1 or 8
Main query: Prints details of fastest swimmer in lane 1 or 8 with fastestTime
SELECT S.initial, S.surname, T.teamName, E.city, E.eventDate
FROM Swimmer S, Team T, Event E, Race Ra, Result Re
WHERE E.eventID = Ra.eventID AND
Ra.raceNumber = Re.raceNumber AND
Re.swimmerID = S.swimmerID AND
S.teamRef = T.teamRef AND
raceTime= (SELECT MIN(raceTime)
FROM Result
WHERE lane = 1 OR lane = 8);

-- 2e: Amended query to print total medals won per team (gold,silver,bronze)
SELECT teamName, COUNT(position) AS [Total medals won]
FROM Result, Swimmer, Team
WHERE Result.swimmerID = Swimmer.swimmerID AND Swimmer.teamRef =
Team.teamRef AND (position = 1 OR position = 2 or position = 3)
GROUP BY teamName
ORDER BY [Total medals won] DESC;

