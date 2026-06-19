CREATE TABLE productsnull (
    pid INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    in_stock INT NOT NULL,
    in_order INT
);

-- Insert the data
INSERT INTO productsnull (pid, product_name, price, in_stock, in_order) VALUES
(1, 'Jarlsberg', 10.45, 16, 15),
(2, 'Mascarpone', 32.56, 23, NULL),
(3, 'Gorgonzola', 15.67, 9, 20);

SELECT * FROM productsnull

SELECT product_name, price * (in_stock + in_order)
FROM productsnull;


SELECT product_name, price * (in_stock +COALESCE(in_order,0) ) AS "total Price of Stock"
FROM productsnull;

INSERT INTO productsnull (pid, product_name, price, in_stock, in_order) VALUES
(4, 'poori', 50, 16, NULL);

--stored procedure fast,security



