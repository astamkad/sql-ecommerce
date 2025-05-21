-- 1. Monthly sales trend: Total revenue by month
SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS OrderMonth,
    SUM(p.Price * o.Quantity) AS MonthlyRevenue
FROM Orders AS o
INNER JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY OrderMonth
ORDER BY OrderMonth;

-- 2. Top 3 customers by lifetime spend
SELECT
    c.Name,
    SUM(o.Quantity * p.Price) AS TotalSpent
FROM Orders AS o
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 3;

-- 3. Products with no sales
SELECT
    p.ProductName
FROM Products AS p
LEFT JOIN Orders AS o ON p.ProductID = o.ProductID
WHERE o.OrderID IS NULL;

-- 4. Average order size (in dollar value)
SELECT
    AVG(o.Quantity * p.Price) AS AvgOrderValue
FROM Orders AS o
INNER JOIN Products AS p ON o.ProductID = p.ProductID;

-- 5. Customers with more than 1 order
SELECT
    c.Name,
    COUNT(o.OrderID) AS OrderCount
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING OrderCount > 1;

-- 6. Repeat product purchases (same product ordered by same customer multiple times)
SELECT
    c.Name,
    p.ProductName,
    COUNT(*) AS RepeatOrders
FROM Orders AS o
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY c.Name, p.ProductName
HAVING RepeatOrders > 1;

-- 7. Revenue by product category
SELECT
    p.Category,
    SUM(o.Quantity * p.Price) AS CategoryRevenue
FROM Orders AS o
INNER JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY CategoryRevenue DESC;
