INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, City, State, ZipCode)
VALUES 
('John', 'Doe', 'john.doe@example.com', '555-123-4567', '123 Main St', 'New York', 'NY', '10001'),
('Jane', 'Smith', 'jane.smith@example.com', '555-987-6543', '456 Oak Ave', 'Los Angeles', 'CA', '90001'),
('Michael', 'Johnson', 'michael.j@example.com', '555-456-7890', '789 Pine Rd', 'Chicago', 'IL', '60601');
INSERT INTO Products (ProductName, Description, Price, Category, StockQuantity)
VALUES 
('Wireless Headphones', 'Noise-cancelling Bluetooth headphones', 199.99, 'Electronics', 50),
('Smart Watch', 'Fitness tracking & notifications', 159.99, 'Electronics', 30),
('Coffee Maker', '12-cup programmable coffee maker', 89.99, 'Home', 20),
('Laptop Backpack', 'Water-resistant with USB charging port', 49.99, 'Accessories', 100),
('Running Shoes', 'Lightweight & breathable', 79.99, 'Footwear', 75);
INSERT INTO Orders (CustomerID, TotalAmount, Status)
VALUES 
(1, 259.98, 'Shipped'),
(2, 89.99, 'Delivered'),
(3, 129.98, 'Pending');
INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 1, 199.99),  -- Order 1: Headphones
(1, 5, 1, 59.99),   -- Order 1: Running Shoes (discounted)
(2, 3, 1, 89.99),   -- Order 2: Coffee Maker
(3, 2, 1, 159.99);  -- Order 3: Smart Watch