-- Display all records
SELECT * FROM Orders;

-- Show orders where TotalPrice is greater than 1000
SELECT *
FROM Orders
WHERE TotalPrice > 1000;

-- Sort orders by TotalPrice (highest first)
SELECT *
FROM Orders
ORDER BY TotalPrice DESC;

-- Count orders by payment method
SELECT PaymentMethod, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod;

-- Total sales
SELECT SUM(TotalPrice) AS TotalSales
FROM Orders;

-- Average order value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;

-- Total quantity sold by product
SELECT Product, SUM(Quantity) AS TotalQuantity
FROM Orders
GROUP BY Product
ORDER BY TotalQuantity DESC;

-- Count orders by status
SELECT OrderStatus, COUNT(*) AS OrdersCount
FROM Orders
GROUP BY OrderStatus;

-- Average price of each product
SELECT Product, AVG(UnitPrice) AS AveragePrice
FROM Orders
GROUP BY Product;

-- Top 10 most expensive orders
SELECT *
FROM Orders
ORDER BY TotalPrice DESC
LIMIT 10;