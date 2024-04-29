USE w3schools;
-- GROUP BY : 집계함수(avg,sum,min,max,count)를 그룹별로 결과 내게 함.
SELECT CategoryID, (SELECT c.CategoryName
                    FROM Categories c WHERE Products.CategoryID = c.CategoryID) 이름,
    COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(ProductID)
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID;

SELECT e.EmployeeID, e.LastName, e.FirstName,SUM(od.Quantity * p.Price) 총매출액
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID;

# 1997년 7월 기준 고객별 소비금액을 금액이 높은 순서로 상위 5개만 조회
SELECT c.CustomerID,SUM(Price * Quantity) 소비금액
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY c.CustomerID
ORDER BY 소비금액 DESC
LIMIT 5;

SELECT Country,City,COUNT(CustomerID)
FROM Customers
GROUP BY Country, City;

# 고객별, 상품별
SELECT c.CustomerName, p.ProductName, SUM(od.Quantity) 상품주문수
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.CustomerID, p.ProductID
ORDER BY c.CustomerID, p.ProductID;

# 국가별, 상품별 판매 갯수 조회()
SELECT Country, p.ProductName, SUM(Quantity) 상품판매수
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON p.ProductID = od.ProductID
GROUP BY c.Country, p.ProductID
ORDER BY Country, 상품판매수 desc;