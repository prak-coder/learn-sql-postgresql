-- The GROUP BY statement is used to group rows that have the same values into summary rows
-- , like "Find the number of customers in each country"

SELECT country,count(customerid) AS "Number of customers" 
FROM customers
GROUP BY country;

SELECT Country, COUNT(CustomerID) AS "Number of Customers"
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) ;