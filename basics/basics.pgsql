SELECT * FROM customers
SELECT customername FROM customers
SELECT customername,city,country FROM customers
SELECT customername,city,country FROM customers WHERE country='Germany'
SELECT DISTINCT  country FROM customers 
SELECT  customername,country FROM customers ORDER BY country
SELECT COUNT(DISTINCT Country) FROM Customers;
-- SELECT * FROM Customers WHERE CustomerID <> 80; <> not equal to
SELECT * FROM Customers WHERE City IN ('Paris','London');
SELECT * FROM Products ORDER BY Price DESC;
SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'R%';
SELECT * FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
SELECT * FROM Customers
WHERE NOT CustomerID > 50;
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');
SELECT * FROM Customers
WHERE City  IN ('Paris', 'London');
INSERT INTO customers (customerid,customername,contactname,address,city,postalcode,country)
VALUES (92,'anand','anand a','chennai india','chennai','600018','India')
INSERT INTO customers VALUES(93,'billy','billy butcher','new york usa','new york','10001','USA')

INSERT INTO Customers VALUES (94,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
INSERT INTO Customers (CustomerName, City, Country) VALUES ('Cardinal', 'Stavanger', 'Norway');
INSERT INTO Customers (customerid, CustomerName, City, Country) VALUES (95, 'Cardinal', 'Stavanger', 'Norway');

INSERT INTO Customers (customerid,CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(96,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
(97,'Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
(98,'Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
