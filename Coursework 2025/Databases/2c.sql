SELECT AVG(valuation)
FROM Comic;

SELECT C.comicTitle, C.issue, P.publisherName, C.valuation
FROM Comic C, Publisher P 
WHERE C.publisherID = P.publisherID;

-- similar?
SELECT C.emailAddress, CO.orderID, GP.quantity AS [Quantity]
FROM Customer C
JOIN Orders CO ON CO.customerID = C.customerID -- join one by one
JOIN GnomePurchase GP ON GP.orderID = CO.orderID -- join next one to previous
JOIN Gnome G ON G.gnomeID = GP.gnomeID 
WHERE G.unitPrice = ( 
    SELECT MAX(unitPrice)
    FROM Gnome
) AND Quantity >= 3;