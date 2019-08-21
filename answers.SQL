-- Table Person 

-- 1. 
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER, 
    height INTEGER, 
    city TEXT, 
    favorite_color TEXT
)

-- 2. 
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES 
('bob', 12, 46, 'Lehi', 'red'), 
('sam', 11, 45, 'Provo', 'blue'), 
('matt', 21, 43, 'Lehi', 'red'), 
('james', 14, 42, 'Salt Lake', 'green'), 
('gerald', 11, 48, 'Lehi', 'red'), 

-- 3. 
SELECT *
FROM person 
ORDER BY height DESC 

-- 4. 
SELECT *
FROM person 
ORDER BY height 

-- 5. 
SELECT * 
FROM person 
ORDER BY age DESC 

-- 6. 
SELECT *
FROM person 
WHERE age > 20

-- 7. 
SELECT *
FROM person 
WHERE age = 18 

-- 8. 
SELECT *
FROM person 
WHERE age < 20 OR age > 30

-- 9. 
SELECT *
FROM person 
WHERE age != 27

-- 10. 
SELECT *
FROM person 
WHERE favorite_color != 'red'

-- 11. 
SELECT *
FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue'

-- 12. 
SELECT * 
FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green'

-- 13. 
SELECT * 
FROM person 
WHERE favorite_color IN ('orange', 'green', 'blue')

-- 14. 
SELECT *
FROM person 
WHERE favorite_color IN ('yellow', 'purple')

-- Table Orders 

-- 1. 
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name TEXT,
    product_price INTEGER,
    quantity INTEGER
)

-- 2. 
INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
( 1, 'Food', 112, 23),
( 2, 'Not Food', 12, 2),
( 1, 'Dog Food', 6, 3),
( 3, 'Cat Food', 16, 2),
( 1, 'Lizard Food', 19, 1)

-- 3. 
SELECT * 
FROM orders 

-- 4. 
SELECT sum(quantity)
FROM orders 

-- 5. 
SELECT sum(product_price * quantity) 
FROM orders 

-- 6. 
SELECT sum(product_price * quantity)
FROM orders 
WHERE person_id = 1 

-- Table Artist

-- 1. 
INSERT INTO artist
(artist_id, name)
VALUES
(310, 'bob'),
(312, 'sam'),
(313, 'rob')

-- 2. 
SELECT * 
FROM artist 
ORDER BY name DESC

-- 3. 
SELECT *
FROM artist 
ORDER BY name 
LIMIT 5

-- 4. 
SELECT *
FROM artist 
WHERE name 
LIKE 'Black%'

-- 5. 
SELECT * 
FROM artist 
WHERE name 
LIKE '%Black%'

-- Table Employee

-- 1. 
SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary'

-- 2. 
SELECT birth_date 
FROM employee 
ORDER BY birth_date DESC
LIMIT 1

-- 3. 
SELECT bith_date 
FROM employee 
ORDER BY birth_date 
LIMIT 1 

-- 4. 
SELECT employee_id
FROM employee 
WHERE first_name = 'Nancy'
-- return 2 
SELECT first_name, last_name
FROM employee 
WHERE reports_to = 2 

-- 5. 
SELECT count(*)
FROM employee
WHERE city = 'Lethbridge'

-- TABLE INVOICE 

-- 1. 
SELECT count(*)
FROM invoice 
WHERE billing_country = 'USA'

-- 2. 
SELECT * 
FROM invoice 
ORDER BY total DESC
LIMIT 1

-- 3. 
SELECT *
FROM invoice 
ORDER BY total 

-- 4. 
SELECT *
FROM invoice 
WHERE total > 5 

-- 5. 
SELECT count(*)
FROM invoice 
WHERE total < 5 

-- 6. 
SELECT count(*)
FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ')

-- 7. 
SELECT avg(total)
FROM invoice 

-- 8. 
SELECT sum(total)
FROM invoice 