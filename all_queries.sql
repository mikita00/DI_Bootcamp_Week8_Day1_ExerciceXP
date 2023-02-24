-- Create a database called public
CREATE DATABASE public;

-- Add two table:

--  items
CREATE TABLE items(id SERIAL PRIMARY KEY, 
item_name VARCHAR(100) NOT NULL,
item_price INTEGER NOT NULL);


--  customers
CREATE TABLE customers(id SERIAL PRIMARY KEY, 
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL);


-- 1. Add the following items to the items table:
--     1 - Small Desk – 100 (ie. price)
--     2 - Large desk – 300
--     3 - Fan – 80

INSERT INTO items(item_name, item_price)
VALUES 
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);



-- 2. Add 5 new customers to the customers table:
--     1 - Greg - Jones
--     2 - Sandra - Jones
--     3 - Scott - Scott
--     4 - Trevor - Green
--     5 - Melanie - Johnson

INSERT INTO customers(firstname, lastname)
VALUES
('Greg', 'Jones'),
('Sandra', 'Jones'),
('Trevor', 'Green'),
('Melanie', 'Johnson');


-- 3. Use SQL to fetch the following data from the database:

--   1. Fetch all the items;
SELECT * FROM items;


--   2. Fetch all the items with a price above 80 (80 not included).
SELECT * FROM items WHERE item_price > 80;


--   3. Fetch all the items with a price below 300. (300 included)
SELECT * FROM items WHERE item_price <= 300 ;


--   4. Fetch all customers whose last name is ‘Smith’
SELECT * FROM customers WHERE lastname = 'Smith';    -- Nothing will be displayed as a result


--   5. Fetch all customers whose last name is ‘Jones’.
SELECT * FROM customers WHERE lastname = 'Jones';


--   6. Fetch all customers whose firstname is not ‘Scott’
SELECT * FROM customers WHERE firstname != 'Scott';
