SELECT
  Description,
  ABS(SUM(Quantity)) AS Return_Quantity
FROM "RETAIL_SALES"."PUBLIC"."UK_ONLINE_RETAIL"
WHERE Quantity < 0
GROUP BY Description
ORDER BY Return_Quantity DESC
LIMIT 10;
