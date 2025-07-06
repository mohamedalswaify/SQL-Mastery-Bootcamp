
/*
=====================================================
Data Manipulation Language (DML) in SQL Server
=====================================================

1. INSERT:
----------
Used to add new records to a table.

Syntax:
    INSERT INTO table_name (column1, column2, ...)
    VALUES (value1, value2, ...);

Example:
    -- Insert into Courses table
    INSERT INTO Courses (Course_ID, Course_Title, Price, Duration)
    VALUES (101, 'SQL Basics', 1500, 60);

    -- Insert into Projects table
    INSERT INTO Projects (Project_ID, Project_Name, Client_Name, Hour_Rate)
    VALUES (1, 'Website Development', 'ABC Corp', 50.00);

    -- Insert into Tasks table
    INSERT INTO Tasks (Task_ID, Description, Start_Date, End_Date, Project_ID)
    VALUES (10, 'Design UI mockups', '2024-09-01', '2024-09-05', 1);


2. UPDATE:
----------
Used to modify existing records.

Syntax:
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;

Example:
    -- Update price in Courses table
    UPDATE Courses
    SET Price = 1800
    WHERE Course_ID = 101;

    -- Update client name in Projects table
    UPDATE Projects
    SET Client_Name = 'XYZ Ltd.'
    WHERE Project_ID = 1;


3. DELETE:
----------
Used to remove one or more records.

Syntax:
    DELETE FROM table_name
    WHERE condition;

Example:
    -- Delete from Tasks table
    DELETE FROM Tasks
    WHERE Task_ID = 10;

    -- Delete from Courses table
    DELETE FROM Courses
    WHERE Course_ID = 101;

NOTE:
- Always use WHERE clause in UPDATE and DELETE to avoid affecting all records unintentionally.
=====================================================
*/
