SELECT 
  S.supplierName,
  v.voucherName,
  V.price AS price£,
  COUNT(*) AS [Number of Customers]
FROM 
  CustomerOrder AS CO,
  Supplier AS S,
  Voucher AS V
WHERE 
  CO.voucherID = V.voucherID
  AND S.supplierCode = V.supplierCode
  AND V.price < 15
  AND V.category = "Family"
GROUP by
  V.voucherID
ORDER BY
  COUNT(*) DESC;