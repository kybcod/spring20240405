USE w3schools;

SELECT AVG(Price) FROM Products WHERE CategoryID = 1;
SELECT SUM(Quantity) FROM OrderDetails WHERE ProductID = 1;

SELECT SUM(Quantity)
FROM OrderDetails od JOIN Orders o
ON od.OrderID = o.OrderID
WHERE ProductID = 2 AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

# 1번 고객이 1997년 중에 총 소비한 금액은?
SELECT SUM(p.Price * od.Quantity)
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE o.CustomerID = 1 AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

# 멕시코 고객이 1997년 중에 총 소비한 금액은?
SELECT sum(p.Price * od.Quantity)
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE c.Country = 'Mexico' AND o.OrderDate LIKE '1997-%-%';
