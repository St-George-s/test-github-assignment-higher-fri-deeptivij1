
-- 2b: Lists gnomeNames and quantities with solar in description
SELECT gnomeName, SUM(quantity) AS [Total gnomes sold]
FROM Gnome G, GnomePurchase GP
WHERE G.gnomeID = GP.gnomeID and G.description LIKE "%solar%"
GROUP BY gnomeName
ORDER BY [Total gnomes sold] DESC;


-- 2c: Lists email, order number, quantity for most expensive gnome
SELECT C.emailAddress, CO.orderID, GP.quantity AS [Quantity]
FROM Customer C
JOIN Orders CO ON CO.customerID = C.customerID -- join one by one
JOIN GnomePurchase GP ON GP.orderID = CO.orderID -- join next one to previous
JOIN Gnome G ON G.gnomeID = GP.gnomeID 
WHERE G.unitPrice = ( 
    SELECT MAX(unitPrice)
    FROM Gnome
) AND Quantity >= 3;

-- OR LIKE SQA DOES TWO QUERIES BUT DOESN'T WORK IN THIS SOFTWARE
SELECT max(unitPrice) AS [Expensive]
FROM Gnome;

SELECT emailaddress, Orders.orderID, quantity
FROM Customer, GnomePurchase, Gnome, CustOrder, 
MaxGnomePrice
WHERE Customer.customerId=Orders.customerID AND 
Orders.orderID=GnomePurchase.orderID AND 
Gnome.gnomeID=GnomePurchase.gnomeID And 
unitPrice=[Expensive] And quantity >=3


-- 2d: Sum total orders and round to 2dp
SELECT forename, surname, ROUND(SUM(quantity * unitPrice * 1.2), 2) AS [Total to Pay (£)]
FROM Customer, Gnome, GnomePurchase, Orders
WHERE Orders.orderID="ord0024"
AND Customer.customerID=Orders.customerID
AND Orders.orderID=GnomePurchase.orderID
AND Gnome.gnomeID=GnomePurchase.gnomeID;
GROUP BY forename, surname -- so if they have more than one (which they dont), it will group them and give them the total to pay