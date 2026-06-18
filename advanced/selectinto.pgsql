SELECT * INTO CustomersBackup2026
FROM Customers;

select * from CustomersBackup2026;

SELECT * INTO US_Customers
FROM Customers
WHERE Country = 'USA';

SELECT * from US_Customers;


SELECT * INTO newtableusingschema
FROM customers
WHERE 1 = 0;

SELECT * FROM newtableusingschema;


INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

INSERT INTO Customers SELECT * FROM Suppliers;

SELECT ProductName, Price,
CASE
  WHEN Price < 20 THEN 'Low Cost'
  WHEN Price BETWEEN 20 AND 50 THEN 'Medium Cost'
  ELSE 'High Cost'
END AS PriceCategory
FROM Products
order by PriceCategory;