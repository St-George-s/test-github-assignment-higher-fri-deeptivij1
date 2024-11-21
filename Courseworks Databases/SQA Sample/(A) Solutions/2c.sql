SELECT 
  firstName, 
  surname, 
  V.voucherID, 
  ROUND(quantityPurchased * price) AS "Amount of Money Spent on Voucher £"
FROM Customer as C, Voucher as V, CustomerOrder as CO
WHERE 
  category = "Adventure" 
  AND voucherName LIKE "%escape room%"
  AND V.voucherID = CO.voucherID 
  AND CO.custID = C.custID
GROUP BY CO.custID
ORDER BY CO.custID DESC;