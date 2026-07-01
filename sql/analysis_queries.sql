--top 10 rows from sales table
select top 10 * from sales;

-- Count total orders
SELECT COUNT(*) AS total_orders FROM sales;

-- Distinct categories
SELECT DISTINCT Category FROM sales;

-- Distinct states
SELECT DISTINCT State FROM sales;

-- Total Revenue, Profit, Orders
SELECT 
  SUM(Amount) AS Total_Revenue,
  SUM(Profit) AS Total_Profit,
  COUNT(*) AS Total_Orders,
  ROUND(AVG(CAST(Profit AS FLOAT)/Amount * 100), 2) AS Avg_Margin_Pct
FROM sales;

-- Revenue and Profit by Category
SELECT 
  Category,
  SUM(Amount) AS Revenue,
  SUM(Profit) AS Profit,
  ROUND(SUM(Profit)*100.0/SUM(Amount), 2) AS Margin_Pct
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;


-- Revenue by Sub-Category top(10)
SELECT 
  [Sub_Category],
  SUM(Amount) AS Revenue,
  SUM(Quantity) AS Units_Sold
FROM sales
GROUP BY [Sub_Category]
ORDER BY Revenue DESC ;

-- Revenue by State
SELECT 
  State,
  SUM(Amount) AS Revenue,
  COUNT(*) AS Orders,
  ROUND(AVG(Amount), 0) AS Avg_Order_Value
FROM sales
GROUP BY State
ORDER BY Revenue DESC;


-- customers by revenue
SELECT 
  CustomerName,
  SUM(Amount) AS Total_Spent,
  COUNT(*) AS Orders,
  SUM(Profit) AS Profit_Generated
FROM sales
GROUP BY CustomerName
ORDER BY Total_Spent DESC

-- Payment mode popularity
SELECT 
  PaymentMode,
  COUNT(*) AS Transactions,
  SUM(Amount) AS Revenue
FROM sales
GROUP BY PaymentMode
ORDER BY Transactions DESC;

-- Monthly Revenue Trend
SELECT 
  [Year_Month],
  SUM(Amount) AS Monthly_Revenue,
  SUM(Profit) AS Monthly_Profit,
  COUNT(*) AS Orders
FROM sales
GROUP BY [Year_Month]
ORDER BY [Year_Month];

-- Year-over-Year comparison
SELECT 
  ([Year_Month]) AS Year,
  SUM (Amount) AS Annual_Revenue,
  SUM (Profit) AS Annual_Profit
FROM sales
GROUP BY Year_Month
ORDER BY Year;


-- Best month overall
SELECT [Year_Month], SUM(Amount) AS Revenue
FROM sales
GROUP BY [Year_Month]
ORDER BY Revenue DESC





