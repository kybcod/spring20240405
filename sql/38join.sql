USE mydb2;

CREATE TABLE table7(
    col1 INT, col2 VARCHAR(3)
);

CREATE TABLE table8(
    cola INT, colb VARCHAR(3)
);

CREATE TABLE table9(
    col3 INT, colc INT, info VARCHAR(3)
);

INSERT INTO table7 VALUES (1,'abc'),(2,'def');
INSERT INTO table8 VALUES (1,'ghi'),(2,'jkl'),(3,'mno');
INSERT INTO table9 VALUES (1,2,'pqr'),(1,3,'stu'),(2,1,'vwx'),(2,2,'yza');

SELECT * FROM table7 JOIN table8 JOIN table9;

SELECT * FROM table7 t7 JOIN table9 t9 ON t7.col1 = t9.col3
                        JOIN table8 t8 ON t8.cola = t9.colc;

USE w3schools;

SELECT o.OrderID, OrderDate,
       c.CustomerID, CustomerName,
       e.EmployeeID, e.LastName, FirstName,
       s.ShipperID, s.ShipperName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
ORDER BY OrderDate, c.CustomerID, e.EmployeeID, s.ShipperID;

SELECT DISTINCT p.ProductName, o.OrderDate
FROM Orders o
JOIN OrderDetails d ON d.OrderID = o.OrderID
JOIN Products p ON p.SupplierID = o.ShipperID
WHERE o.OrderDate = '1996-07-08'
ORDER BY ProductName;

# Fløtemysost
SELECT c.CustomerName, c.Address, OrderDate
FROM Products p
    JOIN OrderDetails d ON d.ProductID = p.ProductID
    JOIN Orders o ON d.OrderID = o.OrderID
    JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE p.ProductName = 'Fløtemysost'
ORDER BY OrderDate, CustomerName;
# 테이블의 순서는 중요하지 않다 레코드의 순서만 다를 뿐 값이 아예 달라지는 것은 아니다.

SELECT *
FROM Customers c
JOIN Orders o ON o.CustomerID = c.CustomerID
JOIN OrderDetails d ON d.OrderID = o.OrderID
JOIN Products p ON p.ProductID = d.ProductID
WHERE p.ProductName = 'Fløtemysost'
ORDER BY OrderDate, CustomerName;
