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

# SQL statement selects all the customers from the country "Mexico", in the "Customers" table:
SELECT * FROM Customers
WHERE Country='Mexico';

# SQL requires single quotes around text values 
SELECT * FROM Customers
WHERE CustomerID=1;

# Operators in The WHERE Clause
-- =	Equal	
-- >	Greater than	
-- <	Less than	
-- >=	Greater than or equal	
-- <=	Less than or equal	
-- <>	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	Between a certain range	
-- LIKE	Search for a pattern	
-- IN	To specify multiple possible values for a column




