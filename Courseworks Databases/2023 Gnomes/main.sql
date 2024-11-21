-- -- 2b: Lists of gnomeNames and quantities with solar in description
-- SELECT gnomeName, SUM(quantity) AS [Total gnomes sold]
-- FROM Gnome G, GnomePurchase GP
-- WHERE G.gnomeID = GP.gnomeID and G.description LIKE "%solar%"
-- GROUP BY gnomeName;

-- 2c: Lists email, order number, quantity for most expensive gnome
SELECT gnomeID
FROM Gnome
WHERE unitPrice = 
(   SELECT MAX(unitPrice)
    FROM Gnome
);
