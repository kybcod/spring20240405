USE w3schools;

# HAVING : 집계함수의 조건

# 상품수가 10기 이상인 카테고리 조회
SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

SELECT  * FROM (SELECT CategoryID, COUNT(ProductID) 상품수
                FROM Products
                GROUP BY CategoryID) c
WHERE 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) >= 5;

# 97년 7월 매출액이 1000달러 이상인 직원들 조회
SELECT e.FirstName, e.LastName, SUM(Price*Quantity) 매출액
FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products P on od.ProductID = P.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY e.EmployeeID
HAVING 매출액 >= 10000;

SELECT e.EmployeeId, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) AS income
FROM Orders o JOIN Employees e ON o.EmployeeId = e.EmployeeId
              JOIN OrderDetails od ON o.OrderId = od.OrderId
              JOIN Products p On od.ProductId = p.ProductId
WHERE o.OrderDate BETWEEN #{from} AND #{to}
GROUP BY e.EmployeeId
ORDER BY income DESC

# 해당 월의 고객별 구매금액 조회
SELECT CustomerName, SUM(od.Quantity * p.Price) AS income FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON p.ProductID = od.ProductID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1997-12-31'
GROUP BY c.CustomerID
ORDER BY income desc ;




