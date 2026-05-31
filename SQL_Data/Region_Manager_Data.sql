-- Creating a lookup table
CREATE TABLE regions (
	Region VARCHAR(50) PRIMARY KEY,
    Manager VARCHAR(100),
    Target_Revenue DECIMAL(12,2)
);

-- Inserting manager data
INSERT INTO regions VALUES
('North', 'Alice Johnson', 120000),
('South', 'Bob Smith', 150000),
('East', 'Carol White', 180000),
('West', 'David Brown', 160000);

-- Query: Performance vs Target
SELECT
	s.Region,
    r.Manager,
    SUM(s.Revenue) AS Actual_Revenue,
    r.Target_Revenue,
    ROUND((SUM(s.Revenue)/r.Target_Revenue)* 100,2) AS Percentage_of_Target,
    CASE
		WHEN SUM(s.Revenue) >= r.Target_Revenue THEN 'Met Target'
        ELSE 'Below Target'
	END AS Status
FROM sales s
JOIN regions r ON s.Region = r.Region
GROUP BY s.Region, r.Manager, r.Target_Revenue
ORDER BY Percentage_of_Target DESC;
