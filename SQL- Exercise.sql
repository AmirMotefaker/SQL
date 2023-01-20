# W3School SQL Course
---------------------------------------
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
-----------------------------------------
# ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

# SQL statement selects all customers from the "Customers" table, sorted by the "Country" column:
SELECT * FROM Customers
ORDER BY Country;

# SQL statement selects all customers from the "Customers" table, sorted DESCENDING by the "Country" column:
SELECT * FROM Customers
ORDER BY Country DESC;

# ORDER BY Several Columns Example
# The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column.
# This means that it orders by Country, but if some rows have the same Country, it orders them by CustomerName:
SELECT * FROM Customers
ORDER BY Country, CustomerName;

# SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column:
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

----------------------------------------


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

--------------------------------------------------
# INSERT INTO Syntax
# 1. Specify both the column names and the values to be inserted:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

# 2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. 
# However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

# SQL statement inserts a new record in the "Customers" table:
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


# Insert Data Only in Specified Columns
# SQL statement will insert a new record, but only insert data in the "CustomerName", "City", and "Country" columns (CustomerID will be updated automatically):
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

-----------------------------------------------------
# SQL NULL Values
# IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

# IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

# The IS NULL Operator
# SQL lists all customers with a NULL value in the "Address" field:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

## Tip: Always use IS NULL to look for NULL values.

# The IS NOT NULL Operator
# SQL lists all customers with a value in the "Address" field:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
-----------------------------------------------------
# SQL UPDATE Statement
# UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

# SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

# UPDATE Multiple Records
# SQL statement will update the ContactName to "Juan" for all records where country is "Mexico":
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

# Update Warning!
# Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!
UPDATE Customers
SET ContactName='Juan';

-------------------------------------------------
# SQL DELETE Statement
# DELETE Syntax
DELETE FROM table_name WHERE condition;

# SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

# Delete All Records
DELETE FROM table_name;
# SQL statement deletes all rows in the "Customers" table, without deleting the table:
DELETE FROM Customers;
-------------------------------------------------
# The SQL SELECT TOP Clause

# SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

# MySQL Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

# SQL statement selects the first three records from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 3 * FROM Customers;
# SQL statement shows the equivalent example for MySQL:
SELECT * FROM Customers
LIMIT 3;


# SQL TOP PERCENT Example
# SQL statement selects the first 50% of the records from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 50 PERCENT * FROM Customers;

# ADD a WHERE CLAUSE
# SQL statement selects the first three records from the "Customers" table, where the country is "Germany" (for SQL Server/MS Access):
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

# SQL statement shows the equivalent example for MySQL:
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

-------------------------------------------
