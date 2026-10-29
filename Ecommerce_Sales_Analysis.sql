CREATE DATABASE ecommerce_project;
USE ecommerce_project;

SELECT COUNT(*) FROM ecommerce_data;

SELECT * FROM ecommerce_data LIMIT 5;

-- Analyzing Total Sales by Region
SELECT Region, SUM(`Total Price`) AS Total_Sales
FROM ecommerce_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Analyzing Sales by Product Category
SELECT Category, SUM(`Total Price`) AS Total_Sales
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Analyzing Sales by Shipping Status
SELECT `Shipping Status`, COUNT(*) AS Total_Orders,
       SUM(`Total Price`) AS Total_Sales
FROM ecommerce_data
GROUP BY `Shipping Status`
ORDER BY Total_Orders DESC;

-- Analyzing Top 10 Products by Sales
SELECT `Product Name`, SUM(`Total Price`) AS Total_Sales
FROM ecommerce_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Analyzing Top 10 Customers by Spending
SELECT `Customer ID`, SUM(`Total Price`) AS Total_Spending
FROM ecommerce_data
GROUP BY `Customer ID`
ORDER BY Total_Spending DESC
LIMIT 10;

-- Analyzing Monthly Sales Trends
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Sales_Month,
       SUM(`Total Price`) AS Total_Sales
FROM ecommerce_data
GROUP BY Sales_Month
ORDER BY Sales_Month;

-- Generating Overall Business Summary
SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT `Customer ID`) AS Total_Customers,
    COUNT(DISTINCT `Product Name`) AS Total_Products,
    SUM(`Total Price`) AS Total_Sales,
    AVG(`Total Price`) AS Average_Sales
FROM ecommerce_data;

