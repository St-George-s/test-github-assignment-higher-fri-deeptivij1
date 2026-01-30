DESCRIBE ALL TABLES;

SELECT *
FROM Publisher;

SELECT *
FROM Comic;

SELECT *
FROM Series;

SELECT *
FROM ComicCharacter;

SELECT *
FROM CharacterInfo;

-- 2c: Display list of comic title, issue, publisher name and valuation for comics at least £300 above average valuation
SELECT C.comicTitle, C.issue, P.publisherName, C.valuation
FROM Comic C, Publisher P 
WHERE C.publisherID = P.publisherID AND
C.valuation >= ((   SELECT AVG(valuation)
                    FROM Comic
) + 300);

-- 2d: Total value of comics where the main character's name contains 'Duck' 
SELECT CI.characterName, SUM(C.valuation) AS [Total Valuation]
FROM Comic C, ComicCharacter CC, CharacterInfo CI
WHERE C.comicID = CC.comicID AND
CI.characterID = CC.characterID AND
CI.characterName LIKE "%Duck%" AND
CC.mainCharacter = 1
GROUP BY CI.characterName
ORDER BY [Total Valuation] DESC;

-- Amended query to display details of comic after valuation was doubled from series "The OK Seven" with character "Starlordly"
SELECT comicTitle, issue, publisherName, (valuation*2) AS [Double Price]
FROM Comic, Publisher, Series, CharacterInfo, ComicCharacter
WHERE Series.seriesName = "The OK Seven"
AND characterName = "Starlordly"
AND Comic.publisherID = Publisher.publisherID
AND Comic.seriesID = Series.seriesID
AND CharacterInfo.characterID = ComicCharacter.characterID
AND Comic.ComicID = ComicCharacter.comicID;

