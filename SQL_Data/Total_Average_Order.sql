-- Comparing total revenue and average sales per order to the region.
SELECT
	Region,
    SUM(Revenue) AS Total_Revenue,
    ROUND(AVG(Revenue), 2) AS Average_Order_Value,
    COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;