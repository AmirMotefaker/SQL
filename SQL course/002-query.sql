SELECT * FROM sql_store.customers;

SELECT * FROM sql_store.orders;

-------------------------------------
USE sql_store;

SELECT * FROM customers

SELECT * 
FROM customers 
WHERE customer_id = 1

SELECT * 
FROM customers 
WHERE customer_id = 1

SELECT * 
FROM customers 
-- WHERE customer_id = 1
ORDER BY first_name
----------------------------------
SELECT first_name, last_name
FROM customers

SELECT first_name, last_name, points
FROM customers

SELECT first_name, last_name, points, points+10
FROM customers

SELECT first_name, last_name, points, points+10, points * 10 + 100
FROM customers

SELECT first_name, last_name, points, points+10, points * 10 + 100, (points * 10) + 100
FROM customers

SELECT first_name, last_name, points, points+10, points * 10 + 100, (points * 10) + 100, points * (10 + 100)
FROM customers

-----------------------------------
SELECT 
    last_name,
    first_name,
    points, (points * 10) + 100 AS discount_factor
FROM customers

SELECT 
    last_name,
    first_name,
    points, (points * 10) + 100 AS 'discount factor'
FROM customers
-----------------------------------
