SELECT
  CustomerID,
  ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Spend
FROM "RETAIL_SALES"."PUBLIC"."UK_ONLINE_RETAIL"
WHERE Quantity > 0 AND CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spend DESC
LIMIT 10;
