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
-- =	      Equal	
-- >       	Greater than	
-- <	      Less than	
-- >=	      Greater than or equal	
-- <=	      Less than or equal	
-- <>     	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	Between a certain range	
-- LIKE   	Search for a pattern	
-- IN	      To specify multiple possible values for a column

------------------------------------------
# AND Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

# OR Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

# NOT Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

# SQL statement selects all fields from "Customers" where country is "Germany" AND city is "Berlin":
SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

# SQL statement selects all fields from "Customers" where city is "Berlin" OR "München":
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

# SQL statement selects all fields from "Customers" where country is NOT "Germany":
SELECT * FROM Customers
WHERE NOT Country='Germany';

# Combining AND, OR and NOT
# SQL statement selects all fields from "Customers" where country is "Germany" AND city must be "Berlin" OR "München" (use parenthesis to form complex expressions):
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

# SQL statement selects all fields from "Customers" where country is NOT "Germany" and NOT "USA":
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';


