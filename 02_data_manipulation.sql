-- o = Orders, c = Customers, p = Products

-- 1. All customers from Nigeria
SELECT *
FROM Customers
WHERE Country = 'Nigeria';

-- 2. Show all products ordered, including customer and product name
SELECT
    o.OrderID,
    c.Name AS CustomerName,
    p.ProductName,
    o.Quantity,
    o.OrderDate
FROM Orders AS o
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON o.ProductID = p.ProductID;

-- 3. Total amount spent by each customer
SELECT
    c.Name,
    SUM(o.Quantity * p.Price) AS TotalSpent
FROM Orders AS o
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY c.Name
ORDER BY TotalSpent DESC;

-- 4. Orders placed after April 2024
SELECT *
FROM Orders
WHERE OrderDate > '2024-04-30';

-- 5. Count orders per customer
SELECT
    c.Name,
    COUNT(o.OrderID) AS OrderCount
FROM Orders AS o
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
GROUP BY c.Name;

-- 6. Customers who have NOT placed any orders
SELECT
    c.Name,
    o.OrderID
FROM Customers  AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;
