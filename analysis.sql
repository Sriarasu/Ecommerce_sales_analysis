-- Total Revenue by Category
SELECT Category, SUM(Price * Quantity) AS Total_Revenue
FROM sales_data
GROUP BY Category;

-- Top 3 Best-Selling Products
SELECT Product, SUM(Quantity) AS Total_Sold
FROM sales_data
GROUP BY Product
ORDER BY Total_Sold DESC
LIMIT 3;

-- Monthly Sales Trend
SELECT strftime('%Y-%m', OrderDate) AS Month, SUM(Price * Quantity) AS Monthly_Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
