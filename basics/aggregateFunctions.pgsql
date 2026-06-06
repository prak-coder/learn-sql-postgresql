-- MIN() - returns the smallest value of a column
-- MAX() - returns the largest value of a column
-- COUNT() - returns the number of rows in a set count null values
-- SUM() - returns the sum of a numerical column
-- AVG() - returns the average value of a numerical column
SELECT * FROM employees

SELECT * Min(price)  from products 
SELECT Max(price)  from products 

SELECT MIN(Price) AS SmallestPrice
FROM Products;




-- CREATE TABLE employees (
--     employee_id SERIAL PRIMARY KEY,
--     last_name VARCHAR(50) NOT NULL,
--     first_name VARCHAR(50) NOT NULL,
--     birth_date DATE,
--     photo VARCHAR(100),
--     notes TEXT
-- );



-- -- 2. Insert the data rows
-- INSERT INTO employees (employee_id, last_name, first_name, birth_date, photo, notes) VALUES
-- (1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International.'),
-- (2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
-- (3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
-- (4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
-- (5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management. He is fluent in French.'),
-- (6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
-- (7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled Selling in Europe, he was transferred to the London office.'),
-- (8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
-- (9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
-- (10, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum.');

-- -- 3. Reset the SERIAL sequence to sync with the inserted IDs
-- SELECT setval(pg_get_serial_sequence('employees', 'employee_id'), COALESCE(MAX(employee_id), 1)) FROM employees;



SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID
ORDER BY  CategoryID; 


SELECT MAX(Price) AS HighestPrice, CategoryID
FROM Products
GROUP BY CategoryID
ORDER BY  CategoryID; 


SELECT * FROM products

SELECT count(*) FROM products

SELECT count(productname) FROM products

SELECT count(supplierid) FROM products


INSERT INTO products(productid,productname,price) VALUES(78,'test',25)

SELECT COUNT(DISTINCT Price)
FROM Products;


SELECT sum(price) as totalPrice from products

SELECT avg(price) as averagePrice from products

SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;


SELECT * FROM products WHERE categoryid=1;


SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
