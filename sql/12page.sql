USE w3schools;

INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers;

SELECT COUNT(*) FROM Customers;

# n은 레코드 수
# (n-1) / 10 + 1