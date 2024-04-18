USE w3schools;

# not : 조건을 만족하지 않으면 TRUE
SELECT * FROM Employees WHERE NOT BirthDate >= '1960-01-01';

SELECT * FROM Customers
WHERE Country IN ('France','Uk','spain')
ORDER BY Country;

SELECT * FROM Customers
WHERE NOT Country IN ('France','Uk','spain')
ORDER BY Country;

SELECT * FROM Customers
WHERE Country NOT IN ('France','Uk','spain')
ORDER BY Country;

SELECT *
FROM Products
WHERE Price BETWEEN 100 AND 200
ORDER BY Price;

SELECT *
FROM Products
WHERE NOT Price BETWEEN 100 AND 200
ORDER BY Price;

# 여러 조건 사용 시 괄호 잘 사용하기
SELECT *
FROM Products
WHERE NOT (CategoryID = 1) AND Price > 50
ORDER BY CategoryID, Price;

SELECT * FROM Orders WHERE NOT OrderDate BETWEEN '1997-01-01' AND '1997-12-31';
SELECT * FROM Suppliers WHERE Country NOT IN ('uk','usa');
