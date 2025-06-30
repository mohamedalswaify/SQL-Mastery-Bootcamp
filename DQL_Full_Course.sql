
-- ***********************Session 1**********************************
-- 📘 SQL Server: Full DQL Course - Beginner to Advanced
-- 👨‍🏫 Name: Mohamed Alswaify
-- 📱 Mobile: 0564842804
-- 🌐 GitHub: https://github.com/mohamedalswaify/SQL-Mastery-Bootcamp
-- *********************************************************

------------------------------------------------------------
-- 📘 THEORETICAL INTRODUCTION: What is DQL?
------------------------------------------------------------
-- DQL (Data Query Language) is used to fetch data from database objects such as tables and views.
-- The main DQL command is:
--     SELECT

-- 🔹 SQL SELECT SYNTAX:
-- SELECT column1, column2, ...
-- FROM table_name
-- [WHERE condition]
-- [GROUP BY column1, column2, ...]
-- [HAVING group_condition]
-- [ORDER BY column1, column2, ... [ASC|DESC]]

-- 🔹 Operators:
--   ➕ Arithmetic: +, -, *, /
--   🔁 Comparison: =, !=, <>, <, <=, >, >=
--   🧠 Logical: AND, OR, NOT
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

-- 🧠 This course demonstrates how to use SELECT in practical contexts, from basic retrieval to advanced logic and multi-table operations.
------------------------------------------------------------

------------------------------------------------------------
-- 🔰 BEGINNER LEVEL: Basic SELECT, WHERE, and ORDER BY
------------------------------------------------------------

-- Task 1: Retrieve all employee data
SELECT * FROM employees;

-- Task 2: Select specific columns
SELECT last_name, hire_date, job_id, salary, department_id FROM employees;

-- Task 3: Calculate annual salary
SELECT last_name, salary * 12 AS annual_salary FROM employees;

-- Task 4: String concatenation
SELECT first_name + ' ' + last_name AS full_name FROM employees;

-- Task 5: DISTINCT and FILTERING
SELECT DISTINCT department_id FROM employees;
SELECT last_name, salary FROM employees WHERE salary < 2500;
SELECT last_name, job_id FROM employees WHERE job_id = 'IT_PROG';

-- Task 6: Use BETWEEN, IN, and LIKE
SELECT * FROM employees WHERE hire_date BETWEEN '2007-01-01' AND '2007-12-31';
SELECT * FROM employees WHERE department_id IN (30, 60, 90);
SELECT * FROM employees WHERE job_id LIKE '%MAN';
SELECT * FROM employees WHERE last_name LIKE 'A%';

-- Task 7: NULL and NOT NULL
SELECT * FROM employees WHERE commission_pct IS NOT NULL;
SELECT * FROM employees WHERE commission_pct IS NULL;

-- Task 8: ORDER BY
SELECT * FROM employees ORDER BY last_name;
SELECT * FROM employees ORDER BY salary DESC;

-- Task 9: Aliases and expressions in ORDER BY
SELECT last_name, salary * 12 AS annual_salary FROM employees ORDER BY salary * 12 DESC;

------------------------------------------------------------
-- 🟡 INTERMEDIATE LEVEL: Variables, GROUP BY, HAVING, CASE
------------------------------------------------------------

-- Task 10: Parameterized query
DECLARE @job NVARCHAR(20) = 'IT_PROG';
SELECT last_name, job_id FROM employees WHERE job_id = @job;

-- Task 11: BETWEEN with variables
DECLARE @low_sal INT = 5000;
DECLARE @high_sal INT = 8000;
SELECT last_name, salary FROM employees WHERE salary BETWEEN @low_sal AND @high_sal;

-- Task 12: Text functions
SELECT UPPER(last_name), LOWER(job_id), LEN(last_name) FROM employees;

-- Task 13: GROUP BY
SELECT department_id, COUNT(*) AS emp_count FROM employees GROUP BY department_id;

-- Task 14: HAVING
SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id HAVING AVG(salary) > 6000;

-- Task 15: CASE for custom columns
SELECT first_name, salary,
    CASE 
        WHEN salary >= 10000 THEN 'High'
        WHEN salary BETWEEN 5000 AND 9999 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees;

-- Task 16: Date functions
SELECT first_name, hire_date, GETDATE() AS today, DATEDIFF(DAY, hire_date, GETDATE()) AS days_worked, YEAR(hire_date) AS hire_year
FROM employees;

-- Task 17: CAST and CONVERT
SELECT salary, CAST(salary AS VARCHAR) AS salary_text, CONVERT(VARCHAR(10), hire_date, 103) AS formatted_hire_date
FROM employees;

-- Task 18: IIF
SELECT first_name, salary, IIF(salary >= 10000, 'Top', 'Normal') AS level
FROM employees;

-- Task 18.1: IIF on commission_pct
SELECT first_name, commission_pct,
       IIF(commission_pct IS NOT NULL, 'Has Commission', 'No Commission') AS commission_status
FROM employees;
------------------------------------------------------------
-- 🔴 ADVANCED LEVEL: Joins, Multi-table Reporting
------------------------------------------------------------

-- Task 19: INNER JOIN
SELECT e.last_name, d.department_name
FROM employees e JOIN departments d ON e.department_id = d.department_id;

-- Task 20: CROSS JOIN
SELECT e.first_name, j.job_title
FROM employees e CROSS JOIN jobs j;

-- Task 21: 3-table JOIN
SELECT e.last_name, d.department_name, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.last_name LIKE 'A%';

-- Task 22: SELF JOIN
SELECT e.last_name AS employee, e.employee_id AS Emp#, m.last_name AS manager, m.employee_id AS Mgr#
FROM employees e JOIN employees m ON e.manager_id = m.employee_id;

-- Task 23: OUTER JOINS
SELECT e.last_name, d.department_name
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id;

SELECT e.last_name, d.department_name
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id;

SELECT e.last_name, d.department_name
FROM employees e FULL OUTER JOIN departments d ON e.department_id = d.department_id;

-- Task 24: WHERE with AND/OR
SELECT last_name, salary, hire_date
FROM employees
WHERE hire_date LIKE '%07' OR salary < 3000;

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – BEGINNER LEVEL
------------------------------------------------------------

-- Q1: Full name and salary
SELECT first_name + ' ' + last_name AS full_name, salary FROM employees;

-- Q2: IT_PROG with salary > 5000
SELECT last_name, job_id, salary FROM employees WHERE job_id = 'IT_PROG' AND salary > 5000;

-- Q3: Hired after 2007
SELECT last_name, hire_date FROM employees WHERE hire_date > '2007-01-01' ORDER BY hire_date DESC;

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – INTERMEDIATE LEVEL
------------------------------------------------------------

-- Q4: Average salary by department ( > 6000 )
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 6000;

-- Q5: Job ID and total employees
SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id;

-- Q6: Salary level using CASE
SELECT first_name, salary,
    CASE
        WHEN salary >= 12000 THEN 'High'
        WHEN salary BETWEEN 6000 AND 11999 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees;

------------------------------------------------------------
-- 🧠 QUESTIONS & EXERCISES – ADVANCED (JOINS ONLY)
------------------------------------------------------------

-- Q1: Employees with department names
SELECT e.first_name + ' ' + e.last_name AS employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Q2: Employees with manager names
SELECT e.first_name + ' ' + e.last_name AS employee,
       m.first_name + ' ' + m.last_name AS manager
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id;

-- Q3: Departments with no employees
SELECT d.department_name
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- Q4: Employees with department and city
SELECT e.first_name + ' ' + e.last_name AS employee, d.department_name, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

-- Q5: CROSS JOIN - All employee/job combinations
SELECT e.first_name + ' ' + e.last_name AS employee, j.job_title
FROM employees e
CROSS JOIN jobs j;

-- Q6: Employees in Toronto
SELECT e.last_name, e.job_id, d.department_name, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'Toronto';

-- Q7: Salary > 12000
SELECT last_name, salary FROM employees WHERE salary > 12000;

-- Q8: Salary NOT BETWEEN 5000 AND 12000
SELECT last_name, salary FROM employees WHERE salary NOT BETWEEN 5000 AND 12000;

-- Q9: Filter jobs + salary NOT IN
SELECT last_name, job_id, salary FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
AND salary NOT IN (2500, 3500, 7000);

-- Q10: Last names J, A, M with UPPER and LENGTH
SELECT UPPER(last_name) AS name_upper, LEN(last_name) AS name_length
FROM employees
WHERE LEFT(last_name, 1) IN ('J', 'A', 'M')
ORDER BY last_name DESC;

-- Q11: Department addresses
SELECT d.location_id, street_address, city, state_province, country_id
FROM departments d
JOIN locations l ON d.location_id = l.location_id;

------------------------------------------------------------
-- ✅ END OF COURSE
------------------------------------------------------------
