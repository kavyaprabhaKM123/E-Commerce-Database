--Total Sales by Customer
SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSpent
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.FirstName, c.LastName
ORDER BY 
    TotalSpent DESC;
--Best-Selling Products
SELECT 
    p.ProductName,
    SUM(oi.Quantity) AS TotalSold,
    SUM(oi.Quantity * oi.UnitPrice) AS Revenue
FROM 
    Products p
JOIN 
    OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    Revenue DESC;

--Monthly Sales Trend
SELECT 
    FORMAT(o.OrderDate, 'yyyy-MM') AS Month,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalRevenue
FROM 
    Orders o
GROUP BY 
    FORMAT(o.OrderDate, 'yyyy-MM')
ORDER BY 
    Month;
--Customer Order History
SELECT 
    c.FirstName + ' ' + c.LastName AS Customer,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    o.Status
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.CustomerID = 1  -- Change ID for different customers
ORDER BY 
    o.OrderDate DESC;