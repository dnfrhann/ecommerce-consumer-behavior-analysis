CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE transactions (
    Transaction_ID INT PRIMARY KEY,
    User_Name VARCHAR(100),
    Age INT,
    Country VARCHAR(100),
    Product_Category VARCHAR(100),
    Purchase_Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Transaction_Date DATE,
    Age_Group VARCHAR(50)
    );
    
SELECT 
    COUNT(Transaction_ID) AS Total_Orders,
    SUM(Purchase_Amount) AS Total_Revenue,
    AVG(Purchase_Amount) AS Average_Order_Value
FROM transactions;

SELECT 
    Product_Category,
    COUNT(Transaction_ID) AS Total_Orders,
    SUM(Purchase_Amount) AS Total_Revenue
FROM transactions
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

SELECT 
    Country,
    COUNT(Transaction_ID) AS Total_Orders,
    SUM(Purchase_Amount) AS Total_Revenue,
    AVG(Purchase_Amount) AS Avg_Spending_Per_User
FROM transactions
GROUP BY Country
ORDER BY Total_Revenue DESC;

SELECT 
    Age_Group,
    Payment_Method,
    COUNT(Transaction_ID) AS Usage_Count
FROM transactions
GROUP BY Age_Group, Payment_Method
ORDER BY Age_Group, Usage_Count DESC;