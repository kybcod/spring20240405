USE w3schools;

# order by : 조회 순서 결정
# order by 컬럼명

SELECT * FROM Products ORDER BY ProductID;
SELECT * FROM Products ORDER BY Price;

# ASC : 오름차순
SELECT * FROM Products ORDER BY Price;

# DESC : 내림차순
SELECT * FROM Products ORDER BY Price DESC ;

# 여러 컬럼 기준
SELECT * FROM Products ORDER BY CategoryID, Price, ProductName;

SELECT * FROM Products ORDER BY CategoryID ASC , Price DESC;
SELECT * FROM Products ORDER BY CategoryID, Price DESC;

# 컬럼명 대신 컬럼 index
SELECT * FROM Products ORDER BY 4;
SELECT * FROM Products ORDER BY 4,6;

# SELECT 컬럼명의 순서를 따라야 함
SELECT ProductName, CategoryID, Price, Unit
FROM Products ORDER BY 2,3;
-- ORDER By CategoryID, Price


SELECT * FROM Employees ORDER BY BirthDate;
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Suppliers ORDER BY City;
SELECT * FROM Employees ORDER BY FirstName DESC;

