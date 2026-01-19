/* Northwind sample database queries
   Common tables used here:
   Customers, Orders, Order Details, Products, Categories
*/

-- 1) Basic SELECT
SELECT *
FROM Customers;

-- 2) WHERE filter: customers from a specific country
SELECT CustomerID, CompanyName, Country
FROM Customers
WHERE Country = 'Germany';

-- 3) JOIN: orders with customer name
SELECT o.OrderID, o.OrderDate, c.CustomerID, c.CompanyName
FROM Orders o
JOIN Customers c ON c.CustomerID = o.CustomerID
ORDER BY o.OrderDate DESC;

-- 4) Aggregation: number of orders per customer
SELECT o.CustomerID, COUNT(*) AS OrderCount
FROM Orders o
GROUP BY o.CustomerID
ORDER BY OrderCount DESC;

-- 5) HAVING: customers with more than 5 orders
SELECT o.CustomerID, COUNT(*) AS OrderCount
FROM Orders o
GROUP BY o.CustomerID
HAVING COUNT(*) > 5
ORDER BY OrderCount DESC;

-- 6) Subquery: products priced above average
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (
  SELECT AVG(UnitPrice)
  FROM Products
)
ORDER BY UnitPrice DESC;
