-- 3.1 Display all episodes, show names, maximum viewers and episode date
SELECT E.episodeTitle, S.showName, E.maxViewers, E.episodeDate
FROM Episode E, Show S
WHERE S.showID = E.showID;

-- 3.2 Retrieve all shows that have episodes scheduled Dec 2024
SELECT S.showName AS [Show], E.episodeTitle AS [Episode]
FROM Show S, Episode E
WHERE S.showID = E.showID AND E.episodeDate LIKE "2024-12%";

-- 3.3 Update "Star Cooks" timeslot endtime on 24th Dec to 19:30
UPDATE Timeslot 
SET endTime = "19:30"
FROM Timeslot, Show
WHERE Show.showID = Timeslot.showID
AND airDate LIKE "%12-24" 
AND showName = "Star Cooks";

--5. Output ordered list of each show and total number of ratings
SELECT S.showName, COUNT(VR.ratingID) AS [TotalRatings]
FROM Show S, ViewerRating VR, Episode E
WHERE S.showID = E.showID
AND E.episodeID = VR.episodeID
GROUP BY showName
ORDER BY [TotalRatings] DESC;


