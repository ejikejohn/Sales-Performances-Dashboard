-- Comparing orders and sales on monthly basis

SELECT
	DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Revenue) AS Monthly_Sales,
    COUNT(*) AS Orders_Count
FROM sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;