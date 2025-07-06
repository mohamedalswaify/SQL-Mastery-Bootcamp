
/*
Introduction to Data Definition Language (DDL) in SQL Server

1. CREATE TABLE:
----------------
Syntax:
    CREATE TABLE table_name (
        column_name datatype [CONSTRAINT constraint_name constraint_type],
        ...,
        [CONSTRAINT constraint_name constraint_type]
    );

Naming Rules:
    - Maximum 128 characters.
    - Can include A-Z, a-z, 0-9, _, @, $, #.
    - Must begin with a letter.
    - Must not be a reserved keyword.

Common Datatypes in SQL Server:
    - Numeric: INT, BIGINT, SMALLINT, DECIMAL(p,s), FLOAT, REAL
    - Text: CHAR(n), VARCHAR(n), TEXT
    - Date/Time: DATE, DATETIME, SMALLDATETIME, TIME
    - Other: BIT, MONEY, UNIQUEIDENTIFIER, VARBINARY(MAX)

Constraint Types:
    - PRIMARY KEY
    - UNIQUE
    - NOT NULL
    - CHECK (condition)
    - FOREIGN KEY REFERENCES other_table(column)

Example:
    CREATE TABLE Employees (
        EmployeeID INT PRIMARY KEY,
        FirstName VARCHAR(50) NOT NULL,
        Salary DECIMAL(10, 2) CHECK (Salary > 0),
        DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
    );


2. ALTER TABLE:
---------------
Syntax Overview:
    ALTER TABLE table_name
    -- Add a new column
    ADD column_name datatype;

    -- Modify column datatype or nullability
    ALTER COLUMN column_name new_datatype;

    -- Drop a column
    DROP COLUMN column_name;

    -- Add a constraint
    ADD CONSTRAINT constraint_name constraint_type;

    -- Drop a constraint
    DROP CONSTRAINT constraint_name;

Note:
    - RENAME COLUMN is not supported directly; use SQL Server Management Studio (SSMS) or recreate the column.

Example:
    -- Add a column
    ALTER TABLE Employees
    ADD Email VARCHAR(100);

    -- Modify a column
    ALTER TABLE Employees
    ALTER COLUMN Email VARCHAR(150);

    -- Drop a column
    ALTER TABLE Employees
    DROP COLUMN Email;

    -- Add a UNIQUE constraint
    ALTER TABLE Employees
    ADD CONSTRAINT UQ_Email UNIQUE (Email);

    -- Drop a constraint
    ALTER TABLE Employees
    DROP CONSTRAINT UQ_Email;


3. DROP TABLE:
--------------
Syntax:
    DROP TABLE table_name;

Example:
    DROP TABLE Employees;

Note:
    - SQL Server automatically removes constraints with the table.

*/


-- ===========================
-- My_Depts and My_Emps Setup
-- ===========================

-- Create departments table
CREATE TABLE My_Depts (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(30) UNIQUE NOT NULL
);

-- Insert sample department
INSERT INTO My_Depts (Dept_ID, Dept_Name)
VALUES (30, 'IT');

-- Create employees table
CREATE TABLE My_Emps (
    Emp_ID INT CONSTRAINT PK_My_Emps_Emp_ID PRIMARY KEY,
    Emp_Name VARCHAR(30) NOT NULL,
    Salary DECIMAL(8, 2) CONSTRAINT CK_My_Emps_Salary CHECK (Salary > 3000),
    Hire_Date DATE DEFAULT GETDATE(),
    Dept_ID INT CONSTRAINT FK_My_Emps_Dept_ID FOREIGN KEY REFERENCES My_Depts(Dept_ID)
);

-- Insert sample employee
INSERT INTO My_Emps (Emp_ID, Emp_Name, Salary, Dept_ID)
VALUES (103, 'Hussain', 20000, 30);


-- ===========================
-- Questions and Solutions
-- ===========================
-- Q1: Create courses table
CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Title VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price BETWEEN 800 AND 3000),
    Start_Date DATE DEFAULT DATEADD(DAY, 7, GETDATE()),
    Duration INT CHECK (Duration BETWEEN 12 AND 120)
);

-- Q2: Create projects table
CREATE TABLE Projects (
    Project_ID INT PRIMARY KEY,
    Project_Name VARCHAR(100) NOT NULL,
    Client_Name VARCHAR(100),
    Hour_Rate DECIMAL(10, 2) CHECK (Hour_Rate > 1)
);

-- Q3: Create tasks table
CREATE TABLE Tasks (
    Task_ID INT PRIMARY KEY,
    Description VARCHAR(255),
    Start_Date DATE,
    End_Date DATE,
    Project_ID INT FOREIGN KEY REFERENCES Projects(Project_ID),
    CONSTRAINT CK_Tasks_EndDate CHECK (End_Date > Start_Date)
);


-- -------------------- Questions ------------------------
-- * create courses table as follow:
--   cours_id => pk
--   course_title => not null
--   price => between 800 and 3000
--   start_date => default value the date after 7 days
--   duration => btw 12 and 120

-- * create a projects table 
--   project_id => pk
--   project_name => not null
--   client_name => 
--   hour_rate => positive greater than 1

-- * create a tasks table
--   task_id => pk
--   description => max char 255
--   start_date => date
--   end_date => greater than start_date
--   project_id => foreign key




