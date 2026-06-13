SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
ORDER BY Country;


SELECT City, Country FROM Customers
WHERE Country='USA'
UNION 
SELECT City, Country FROM Suppliers
WHERE Country='USA'
ORDER BY City;


SELECT Country FROM Customers
UNION ALL
SELECT Country FROM Suppliers
ORDER BY Country;


SELECT City, Country FROM Customers
WHERE Country='USA'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='USA'
ORDER BY City;
