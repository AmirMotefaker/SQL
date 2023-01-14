--Table 1 Query:
--Create Table EmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Table 2 Query:
--Create Table EmployeeSalary 
--(EmployeeID int, 
--JobTitle varchar(50), 
--Salary int
--)



--Table 1 Insert:
--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')


--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)


--SELECT FirstName
--FROM EmployeeDemographics

--SELECT FirstName, LastName
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT DISTINCT(EmployeeID)
--FROM EmployeeDemographics

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT DISTINCT(Lastname)
--FROM EmployeeDemographics

--SELECT COUNT(LastName)
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeSalary

--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT MIN(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary


--SELECT * 
--FROM SQLTutorial.dbo.EmployeeSalary

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName = 'Jim'

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName <> 'Jim'

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age > 30

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age <= 32

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age <= 32 AND Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age <= 32 OR Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'S%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE '%S%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'S%o%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'S%ott%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'S%ott%c%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'S%c%ott%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName is NOT NULL

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName IN ('Jim', 'Michael')

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics 

--SELECT Gender
--FROM EmployeeDemographics 
--GROUP BY Gender

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics 
--GROUP BY Gender

-------------------------------
--SELECT *
--FROM EmployeeDemographics 

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics 
--GROUP BY Gender
------------------------------

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployeeDemographics 
--GROUP BY Gender, age

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY Gender

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC


----- Intermediate SQL Tutorial -----
/* 
Inner Joins, Full/Left/Right Joins
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary


----Table 1 Insert:
--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')



----Table 3 Query:
--Create Table WareHouseEmployeeDemographics 
--	(EmployeeID int, 
--	 FirstName varchar(50), 
--	 LastName varchar(50), 
--	 Age int, 
--	 Gender varchar(50)
--)

----Table 3 Insert:
--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

---- Messages:
----Msg 209, Level 16, State 1, Line 269
--Ambiguous column name 'EmployeeID'.

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeSalary.EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeSalary.EmployeeID, FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE FirstName <> 'Michael'

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE FirstName <> 'Michael'
--	ORDER BY Salary

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE FirstName <> 'Michael'
--	ORDER BY Salary DESC



--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'

--SELECT JobTitle, AVG(Salary)
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle


----- Intermediate SQL Tutorial -----
/* 
Union / Union All
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID =
--		WareHouseEmployeeDemographics.EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION
--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION ALL
--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION ALL
--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
--ORDER BY EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
--ORDER BY EmployeeID

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID


--SELECT EmployeeID, FirstName, Age
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID


----- Intermediate SQL Tutorial -----
/* 
Case Statement | Use Cases
*/

--SELECT FirstName, Lastname, Age
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL

--SELECT FirstName, Lastname, Age
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER By Age


--SELECT FirstName, Lastname, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Young'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER By Age


--SELECT FirstName, Lastname, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER By Age


--SELECT FirstName, Lastname, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age = 38 THEN 'Stanley'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER By Age


--SELECT FirstName, Lastname, Age,
--CASE
--	WHEN Age = 38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER By Age

--Select FirstName, Lastname, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--Select FirstName, Lastname, JobTitle, Salary,
--CASE
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
--	ELSE Salary + (Salary * .03)
--END AS SalaryAfterRaise
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


----- Intermediate SQL Tutorial -----
/* 
Having Clause
*/

--SELECT JobTitle, COUNT(JobTitle)
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle

--SELECT JobTitle, COUNT(JobTitle)
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(JobTitle) > 1
--GROUP BY JobTitle

----Error:
----An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.

-- How to Solved it?
SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle) > 1
GROUP BY JobTitle

-- Error:
-- Incorrect syntax near the keyword 'GROUP'.

-- How to Solved it?
-- change HAVING and Group priority
SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1



SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
--HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary)
--HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)


----- Intermediate SQL Tutorial -----
/* 
Updating/Deleting Data
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly' AND LastName = 'Flax'

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012


DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004


----- Intermediate SQL Tutorial -----
/* 
Aliasing
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName AS Fname
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


SELECT Age
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT AVG(Age)
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT AVG(Age) AS AvgAge
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


SELECT *
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo

SELECT Demo.EmployeeID
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo


SELECT Demo.EmployeeID, Sal.Salary
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
-------OR
SELECT Demo.EmployeeID, Sal.Salary
FROM [SQLTutorial].[dbo].[EmployeeDemographics] Demo
JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT a.EmployeeID, a.FirstName, a.LastName, b.JobTitle, c.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics a
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics c
	ON a.EmployeeID = c.EmployeeID


SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID


----- Intermediate SQL Tutorial -----
/* 
Partition By
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary


SELECT *
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID


SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION By Gender) AS TotalGender
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID


SELECT Gender, COUNT(Gender)
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender



----- Advanced SQL Tutorial -----
/* 
CTE (Common Table Expression)
*/

WITH CTE_Employee as
 (SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee


WITH CTE_Employee as
 (SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee


----- Advanced SQL Tutorial -----
/* 
Temp Tables
*/

CREATE TABLE #tmp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #tmp_Employee

INSERT INTO #tmp_Employee VALUES (
'1001', 'HR', '45000'
)

SELECT *
FROM #tmp_Employee


INSERT INTO #tmp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary

SELECT *
FROM #tmp_Employee


CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2

--------------------------------------------------------
-- How to remove a table from the database if it exists
DROP TABLE IF EXISTS #Temp_Employee2 
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2


----- Advanced SQL Tutorial -----
/* 
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

--Drop Table EmployeeErrors;
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 


Select *
From EmployeeErrors


-- Using Replace
Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT err.FirstName, dem.FirstName
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON err.FirstName = dem.FirstName


SELECT err.FirstName, SUBSTRING(err.FirstName,1,3), dem.FirstName,  SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

-- Gender
-- LastName
-- Age
-- DOB

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)


-- Using UPPER and lower
Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors