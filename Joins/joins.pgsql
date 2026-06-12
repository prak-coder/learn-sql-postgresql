-- The JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Here are the different types of JOINs in SQL:

-- (INNER) JOIN: Returns only rows that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all rows from the left table, and only the matched rows from the right table
-- RIGHT (OUTER) JOIN: Returns all rows from the right table, and only the matched rows from the left table
-- FULL (OUTER) JOIN: Returns all rows when there is a match in either the left or right table

SELECT * FROM customers
SELECT * FROM orders
SELECT * FROM categories
SELECT * FROM products





SELECT orders.orderid,customers.customername,orders.orderdate
FROM orders
INNER JOIN customers ON orders.customerid = customers.customerid;

SELECT products.productname,products.price,categories.categoryname,categories.description
FROM products
JOIN categories ON products.categoryid = categories.categoryid;


SELECT Customers.CustomerName, Orders.OrderID,orders.orderdate
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

-- SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
-- FROM Orders
-- RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
-- ORDER BY Orders.OrderID;
