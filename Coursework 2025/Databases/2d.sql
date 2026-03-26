-- 2d: Total value of comics where the main character's name contains 'Duck' 
SELECT CI.characterName, SUM(C.valuation) AS [Total Valuation]
FROM Comic C, ComicCharacter CC, CharacterInfo CI
WHERE C.comicID = CC.comicID AND
CI.characterID = CC.characterID AND
CI.characterName LIKE "%Duck%" AND
CC.mainCharacter = 1
GROUP BY CI.characterName
ORDER BY [Total Valuation] DESC;