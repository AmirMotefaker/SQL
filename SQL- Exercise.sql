# SELECT Syntax
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM table_name;

# SELECT Column Example
SELECT CustomerName, City FROM Customers;

SELECT * FROM Customers;

-----------------------------------------
# SELECT DISTINCT Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;

# SELECT Example Without DISTINCT
SELECT Country FROM Customers;

# SELECT DISTINCT Examples
SELECT DISTINCT Country FROM Customers;

# SQL statement lists the number of different (distinct) customer countries:
SELECT COUNT(DISTINCT Country) FROM Customers;

-----------------------------------------
# WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;




