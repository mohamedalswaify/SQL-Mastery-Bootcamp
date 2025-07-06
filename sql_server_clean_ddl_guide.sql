
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
