USE w3schools;

# and 여러 조건 만족
# or
SELECT * FROM Products WHERE ProductName LIKE 'a%' OR ProductName LIKE 'c%';
SELECT * FROM Products WHERE CategoryID = 1 OR CategoryID = 3 OR CategoryID = 5;
SELECT * FROM Products WHERE SupplierID = 1 AND CategoryID = 1;
SELECT * FROM Products WHERE SupplierID = 1 AND CategoryID = 1 AND Price < 20;
SELECT * FROM Products WHERE SupplierID = 2 AND CategoryID = 2 AND Price > 20;

# WHERE의 조건을 () 사용해서 우선순위 결정
SELECT * FROM Products WHERE SupplierID = 2 AND (CategoryID = 2 OR Price > 20);

SELECT * FROM Customers WHERE Country = 'UK' OR Country = 'USA';
SELECT * FROM Customers WHERE City = 'Madrid' OR City = 'London';
SELECT * FROM Orders WHERE OrderDate LIKE '1997-05-%';
SELECT * FROM Orders WHERE OrderDate BETWEEN '1997-05-01' AND '1997-05-31';
SELECT * FROM Orders WHERE OrderDate >= '1997-05-01' AND OrderDate <= '1997-05-31';

SELECT * FROM Customers WHERE CustomerName LIKE '%be%' OR ContactName LIKE '%be%';
SELECT * FROM Employees;