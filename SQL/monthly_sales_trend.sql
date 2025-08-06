SELECT
  DATE_TRUNC('month', InvoiceDate) AS Month,
  ROUND(SUM(Quantity * UnitPrice), 2) AS Monthly_Revenue
FROM "RETAIL_SALES"."PUBLIC"."UK_ONLINE_RETAIL"
WHERE Quantity > 0
GROUP BY Month
ORDER BY Month;
