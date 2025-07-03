-- ***********************Session 1**********************************
-- 📘 SQL Server: Full SQL Course - Beginner to Advanced
-- 👨‍🏫 Name: Mohamed Alswaify
-- 📱 Mobile: 0564842804
-- 🌐 GitHub: https://github.com/mohamedalswaify/SQL-Mastery-Bootcamp
-- *********************************************************

------------------------------------------------------------
-- 📘 THEORETICAL INTRODUCTION: What is SQL?
------------------------------------------------------------
-- SQL (Structured Query Language) is used to interact with relational databases.
-- The main data retrieval command is:
--     SELECT

-- 🔹 SQL SELECT SYNTAX:
-- SELECT column1, column2, ...
-- FROM table_name
-- [WHERE condition]
<<<<<<< HEAD
=======
-- [GROUP BY column1, column2, ...]
-- [HAVING group_condition]
>>>>>>> 322f10a29734bb6fd4ed8c541cdee283db34c734
-- [ORDER BY column1, column2, ... [ASC|DESC]]

-- 🔹 Operators:
--   ➕ Arithmetic: +, -, *, /
--   🔁 Comparison: =, !=, <>, <, <=, >, >=
<<<<<<< HEAD
--   🧠 Logical: AND, OR
=======
--   🧠 Logical: AND, OR, NOT
>>>>>>> 322f10a29734bb6fd4ed8c541cdee283db34c734
--   🧮 Range: BETWEEN ... AND ...
--   📋 List: IN (...)
--   🔍 Pattern: LIKE 'pattern'
--   🚫 NULL Check: IS NULL, IS NOT NULL

-- 🔹 Functions:
--   🔤 Text: UPPER(), LOWER(), LEN(), LEFT(), RIGHT()
--   🔢 Numbers: ROUND(), CEILING(), FLOOR()
--   📅 Dates: GETDATE(), DATEADD(), DATEDIFF(), YEAR(), MONTH(), DAY()
--   🔄 Conversion: CAST(), CONVERT()
--   ⚙️ Conditional: CASE, IIF()
--   ⚙️ Group Functions: Count() ,Max() ,Min() ,Sum() ,AVG()
-- 🔗 JOIN TYPES:

--   🔄 INNER JOIN:
--     Retrieves only the rows that have matching values in both tables.

--   ⬅️ LEFT JOIN:
--     Retrieves all rows from the left table, and the matched rows from the right table.
--     If there is no match, the result is NULL on the right side.

--   ➡️ RIGHT JOIN:
--     Retrieves all rows from the right table, and the matched rows from the left table.
--     If there is no match, the result is NULL on the left side.

--   🔁 FULL OUTER JOIN:
--     Retrieves all rows from both tables, whether they match or not.
--     Unmatched rows from either side will return NULL for the other side.

--   ✳️ CROSS JOIN:
--     Returns the Cartesian product of the two tables.
--     Every row from the first table is combined with every row from the second table.

------------------------------------------------------------
-- 📝 DML (Data Manipulation Language)
------------------------------------------------------------

-- 📘 WHAT IS DML?
-- DML stands for Data Manipulation Language. It allows you to perform operations on the data stored in database tables.
-- The most common DML statements are:

--   ✅ INSERT: Add new records to a table
--   📝 UPDATE: Modify existing records
--   ❌ DELETE: Remove records from a table


------------------------------------------------------------
-- 🔰 BEGINNER LEVEL TASKS
------------------------------------------------------------

-- Task 1: Retrieve all employee data

-- Task 2: Select specific columns

-- Task 3: Calculate annual salary

-- Task 4: String concatenation

-- Task 5: DISTINCT and filtering

-- Task 6: Use BETWEEN, IN, and LIKE

-- Task 7: NULL and NOT NULL filtering

-- Task 8: Use ORDER BY to sort data

-- Task 9: Use alias and expressions in ORDER BY

------------------------------------------------------------
-- 🟡 INTERMEDIATE LEVEL TASKS
------------------------------------------------------------

-- Task 10: Use variables in a query

-- Task 11: Use BETWEEN with variables

-- Task 12: Use string functions

-- Task 13: Use GROUP BY

-- Task 14: Use HAVING to filter groups

-- Task 15: Use CASE to categorize results

-- Task 16: Use date functions

-- Task 17: Use CAST and CONVERT

-- Task 18: Use IIF for conditional output

-- Task 18.1: Apply IIF on commission_pct

------------------------------------------------------------
-- 🔴 ADVANCED LEVEL TASKS (JOINS & MULTI-TABLE)
------------------------------------------------------------

-- Task 19: Use INNER JOIN to combine employees with departments

-- Task 20: Use CROSS JOIN to show all employee-job combinations

-- Task 21: Use JOIN with three tables

-- Task 22: Use SELF JOIN to show employees with their managers

-- Task 23: Use LEFT, RIGHT, FULL OUTER JOINs

-- Task 24: Use WHERE with complex logic (AND/OR)

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – BEGINNER LEVEL
------------------------------------------------------------

-- Q1: Show full name and salary of each employee

-- Q2: Show job ID and salary > 5000 for IT_PROG

-- Q3: Show employees hired after 2007, sorted by hire date desc

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – INTERMEDIATE LEVEL
------------------------------------------------------------

-- Q4: Show department ID and avg salary for depts with avg > 6000

-- Q5: Show job ID and count of employees per job

-- Q6: Categorize salary levels using CASE (High, Medium, Low)

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – ADVANCED LEVEL (JOINS)
------------------------------------------------------------

-- Q1: Show employees with their department names

-- Q2: Show employees with their manager names

-- Q3: Show departments that have no employees

-- Q4: Show employees with department name and city

-- Q5: Use CROSS JOIN to show all employee-job combinations

-- Q6: Show employees working in city ‘Toronto’

-- Q7: Show employees with salary > 12000

-- Q8: Show employees with salary NOT BETWEEN 5000 AND 12000

-- Q9: Show employees in certain jobs, excluding some salaries

-- Q10: Show last names starting with J, A, or M (uppercase + length)

-- Q11: Show department address details using LOCATIONS

------------------------------------------------------------
-- ✅ TASKS
------------------------------------------------------------

-- Task 1: Insert a new department called "Innovation" with ID 300
-- Task 2: Update the job title of employee ID 103 to 'DEV_LEAD'
-- Task 3: Delete all employees hired before the year 2000
-- Task 4: Insert 2 new employees with commission_pct values
-- Task 5: Update all NULL commission_pct to 0 for sales employees


------------------------------------------------------------
-- ✅ END OF COURSE (WITHOUT SOLUTIONS)
------------------------------------------------------------
