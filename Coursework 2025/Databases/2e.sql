-- Amended query to display details of comic after valuation was doubled from series "The OK Seven" with character "Starlordly"
SELECT comicTitle, issue, publisherName, (valuation*2) AS [Double Price]
FROM Comic, Publisher, Series, CharacterInfo, ComicCharacter
WHERE Series.seriesName = "The OK Seven"
AND characterName = "Starlordly"
AND Comic.publisherID = Publisher.publisherID
AND Comic.seriesID = Series.seriesID
AND CharacterInfo.characterID = ComicCharacter.characterID
AND Comic.ComicID = ComicCharacter.comicID;
