USE mydb2;

SELECT * FROM product;
SELECT * FROM category;

SELECT * FROM product p JOIN category c ON p.category_id = c.id;
SELECT * FROM product p LEFT JOIN category c ON p.category_id = c.id;

# 상품이 존재하지 않는 카테고리
SELECT *
FROM product p RIGHT JOIN category c
ON p.category_id = c.id
WHERE p.id IS NULL;

USE w3schools;
SELECT *
FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

# INNER JOIN
# 1996년에 주문한 적 있는 고객
SELECT DISTINCT c.CustomerName
FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE OrderDate LIKE '1996-%-%'
ORDER BY c.CustomerName;

DELETE FROM Orders WHERE OrderDate >= '1997-01-01';

# 1996년에 주문한 적 없는 고객
SELECT DISTINCT c.CustomerName
FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE OrderDate IS NULL
ORDER BY c.CustomerName;

INSERT INTO Employees (LastName,FirstName) VALUES ('흥민','손'),('강인','이');

# 한번도 주문을 처리한 적 없는 직원 조회
SELECT e.LastName, e.FirstName FROM Employees e LEFT JOIN Orders o
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL;


