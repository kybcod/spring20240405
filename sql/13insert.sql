USE w3schools;

# INSERT INTO 테이블명 (컬럼명..) VALUES (데이터들..)

SELECT * FROM Employees ORDER BY EmployeeID DESC;

INSERT INTO Employees (LastName) VALUES ('ironman');
INSERT INTO Employees (FirstName) VALUES ('tony');

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captain','steve','1990-01-01','pic1','america');

INSERT INTO Employees (LastName, FirstName) VALUES ('widow','natasha');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('kim','lee','shinchon','seoul',1234,'korea');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('park','kim','hongdae','seoul',5678,'korea');

SELECT * FROM Customers ORDER BY CustomerID DESC;
