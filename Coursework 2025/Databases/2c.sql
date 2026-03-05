-- 2c: Display list of comic title, issue, publisher name and valuation for comics at least £300 above average valuation
SELECT C.comicTitle, C.issue, P.publisherName, C.valuation
FROM Comic C, Publisher P 
WHERE C.publisherID = P.publisherID AND
C.valuation >= ((   SELECT AVG(valuation)
                    FROM Comic
) + 300);