SELECT
  Country,
  ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Revenue
FROM "RETAIL_SALES"."PUBLIC"."UK_ONLINE_RETAIL"
WHERE Quantity > 0
GROUP BY Country
ORDER BY Total_Revenue DESC;
