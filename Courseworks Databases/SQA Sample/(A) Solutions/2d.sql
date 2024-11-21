SELECT 
  V.voucherID, 
  supplierName, 
  voucherName, 
  quantityAvailable - SUM(quantityPurchased) AS [Still Available]
FROM 
  Voucher AS V, 
  Supplier AS S,
  CustomerOrder AS CO
WHERE 
  V.voucherID = "V543"
  AND S.supplierCode = V.supplierCode
  AND V.voucherID = CO.voucherID
GROUP BY V.voucherID;