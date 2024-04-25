# JOIN : 여러 테이블을 묶어서 조회하는 방법
USE w3schools;
SELECT * FROM w3schools.Products;
SELECT * FROM w3schools.Categories;

# 조인을 하지 않으면 chais의 categoryID를 찾아서 Categories 테이블에서 해당 아이디를 검색
SELECT * FROM Products WHERE ProductName = 'Chais';
SELECT * FROM Categories WHERE CategoryID = 1;

SELECT ProductName, CategoryName
FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE ProductName = 'CHais';