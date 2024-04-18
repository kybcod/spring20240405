USE w3schools;

#  IN 하나라도 같으면...
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'UK';

SELECT * FROM Customers WHERE Country IN ('germany','uk');

SELECT * FROM Customers WHERE Country IN ('germany', 'uk','sweden','france');

SELECT * FROM Products WHERE CategoryID IN (2,3,6);
SELECT * FROM Suppliers WHERE Country IN ('japan','brazil','italy');