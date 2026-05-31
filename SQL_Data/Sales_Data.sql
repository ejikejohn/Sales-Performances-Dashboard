-- Creating the database--
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

CREATE TABLE sales (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Region VARCHAR(50),
    Category VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    Revenue DECIMAL(12,2)
);

-- Verify it was created
SHOW TABLES;
DESCRIBE sales;