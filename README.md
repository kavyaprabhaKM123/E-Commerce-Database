# 🛍️ E-Commerce Database (SQL Server)

![ER Diagram](er-diagram.png) *← Upload your diagram first*

A complete database solution for an online store with:
- Customer management
- Product catalog
- Order processing system

## 📋 Database Schema
```sql
-- Example from schema.sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
```

## 🔍 Sample Analysis
**Top 5 Products by Revenue:**
```sql
SELECT TOP 5 p.ProductName, SUM(oi.Quantity * oi.UnitPrice) AS Revenue
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC;
```

## 🛠️ How to Use
1. Run `schema.sql` in SQL Server
2. Insert data using `data.sql`
3. Analyze with `queries.sql`

## 📊 Next Steps
- [ ] Add stored procedures
- [ ] Create Power BI dashboard
