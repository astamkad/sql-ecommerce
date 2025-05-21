-- o = Orders, c = Customers, p = Products

-- 7. RIGHT JOIN: Show all customers and their orders (if any)
SELECT
    c.Name AS CustomerName,
    o.OrderID,
    o.OrderDate
FROM Orders AS o
RIGHT JOIN Customers AS c ON o.CustomerID = c.CustomerID;

-- 8. FULL OUTER JOIN Simulation: Show all customers and all orders, even if unmatched
-- MySQL does not support FULL OUTER JOIN directly, so we use UNION of LEFT and RIGHT joins
SELECT
    c.Name AS CustomerName,
    o.OrderID
FROM Customers AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID

UNION

SELECT
    c.Name AS CustomerName,
    o.OrderID
FROM Customers AS c
RIGHT JOIN Orders AS o ON c.CustomerID = o.CustomerID;

-- 9. SELF JOIN: Find pairs of customers from the same country
-- This example avoids duplicate pairs (e.g., A-B and B-A)
SELECT
    c1.Name AS Customer1,
    c2.Name AS Customer2,
    c1.Country
FROM Customers AS c1
INNER JOIN Customers AS c2 ON c1.Country = c2.Country
WHERE c1.CustomerID < c2.CustomerID;

-- 10. CROSS JOIN: Match every customer with every product (e.g., all possible offer combinations)
SELECT
    c.Name AS CustomerName,
    p.ProductName
FROM Customers AS c
CROSS JOIN Products AS p;
