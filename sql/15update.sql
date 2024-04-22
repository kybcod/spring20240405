USE w3schools;

# UPDATE 테이블명 SET 컬럼명 = 바꿀값, 컬렴명 = 바꿀값, ... WHERE 레코드의 조건

# 주의!!! : UPDATE 전에 같은 WHERE로 SELECT 꼭 해보기!!!

SELECT * FROM Customers WHERE CustomerID = 10;

UPDATE Customers SET CustomerName = 'IRON MAN' WHERE CustomerID = 10;

UPDATE Customers
SET Address = 'STARK TOWER', City='맨하탄', PostalCode=12345
WHERE CustomerID = 10;

SELECT  * FROM Customers WHERE Country = '영국';

UPDATE Customers
SET Country = '영국';