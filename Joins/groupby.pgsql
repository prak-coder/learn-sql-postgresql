-- The GROUP BY statement is used to group rows that have the same values into summary rows
-- , like "Find the number of customers in each country"

SELECT country,count(customerid) AS "Number of customers" 
FROM customers
GROUP BY country;

SELECT Country, COUNT(CustomerID) AS "Number of Customers"
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) ;

-- The HAVING clause is used to filter the results of a GROUP BY query based on aggregate functions.

SELECT Country, COUNT(CustomerID) AS "Number of Customers"
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

SELECT Country, COUNT(CustomerID) AS "Number of Customers"
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

SELECT * FROM Suppliers
SELECT * FROM Products



SELECT employees.last_name, COUNT(orders.orderid) AS NumberOforders
FROM orders
INNER JOIN employees ON orders.shipperid = employees.employee_id 
GROUP BY last_name
HAVING COUNT(orders.orderid)>10;

-- The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows.
-- The EXISTS operator evaluates to TRUE if the subquery returns at least one row, and FALSE otherwise.

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
  SELECT ProductName
  FROM Products
  WHERE Products.supplierid = Suppliers.supplierid AND Price =30
);

SELECT ProductName FROM Products
WHERE ProductID = ANY (
  SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10
);
 