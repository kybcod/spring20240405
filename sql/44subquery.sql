USE w3schools;

# 28.866364
SELECT AVG(Price) FROM w3schools.Products;

SELECT * FROM Products WHERE Price >= 28.866364;
SELECT * FROM Products WHERE Price >= (SELECT AVG(Price) FROM w3schools.Products);

SELECT ProductName
FROM Products
WHERE CategoryID = 2 AND Price > (SELECT AVG(Price)
                                   FROM Products
                                   WHERE CategoryID = 1);

SELECT CustomerID FROM Customers WHERE Country='Mexico';

# mexico 고객이 주분한 건들 조회
SELECT * FROM Orders WHERE CustomerID IN (SELECT CustomerID
                                         FROM Customers
                                         WHERE Country = 'mexico');

# JOIN
SELECT * FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'mexico';


# 1번 카테고리 상품들이 주문된 날짜들 조회
SELECT DISTINCT o.OrderDate
FROM Orders o
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
WHERE p.CategoryID = 1;

SELECT DISTINCT o.OrderDate
FROM Orders o WHERE o.OrderID IN (SELECT od.OrderID
                                                    FROM OrderDetails od
                                                    WHERE od.ProductID IN (SELECT p.ProductID
                                                                           FROM Products p
                                                                           WHERE p.CategoryID = 1));


SELECT City, Country FROM Customers WHERE CustomerID IN (1,2);

SELECT CustomerName FROM Customers
                    WHERE (City, Country) IN
                                         (SELECT City, Country FROM Customers WHERE CustomerID IN (1,2));

SELECT CustomerName, City
FROM(SELECT CustomerID, CustomerName, City, Country
     FROM Customers) AS miniCustomers;

# 상관서브쿼리(속도느림), JOIN으로 해결할 수 있는지 고민
# 외부커리의 값이내부 쿼리에 사용될 때

    # 각 고객의 주문 횟수
    SELECT CustomerName, Country,
           (SELECT COUNT(OrderID)
            FROM Orders
            WHERE Customers.CustomerID = Orders.CustomerID)
    FROM Customers;

    # JOIN
    SELECT CustomerName, Country, COUNT(OrderID)
    FROM Customers c LEFT JOIN Orders o
        ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID;

# 상품별 총 매출 금액
SELECT p.ProductID, (SELECT SUM(od.Quantity)
                      FROM OrderDetails od
                      WHERE od.ProductID = p.ProductID) * p.Price 'total price'
FROM Products p;
