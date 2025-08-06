SELECT
  Country,
  ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Return_Value
FROM "RETAIL_SALES"."PUBLIC"."UK_ONLINE_RETAIL"
WHERE Quantity < 0
GROUP BY Country
ORDER BY Total_Return_Value ASC;
