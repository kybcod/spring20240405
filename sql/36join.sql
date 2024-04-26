USE w3schools;

SELECT * FROM Products;
SELECT * FROM Categories;

SELECT CategoryName FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryID = 1;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE ProductID = 10;

SELECT CustomerName FROM Orders o JOIN Customers c
ON c.CustomerID = o.CustomerID
WHERE OrderID = 10249;

SELECT e.LastName, e.FirstName FROM Orders o JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE OrderID = 10249;

SELECT s.ShipperName
FROM Orders o, Shippers s
WHERE o.ShipperID = s.ShipperID
AND OrderID = 10249;

SELECT CustomerName, OrderDate FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID = 90
ORDER BY o.OrderDate;

SELECT e.LastName, e.FirstName, o.OrderDate FROM Employees e
JOIN Orders o on e.EmployeeID = o.EmployeeID
WHERE CustomerID = 3
ORDER BY o.OrderDate;