




CREATE TABLE [dbo].[Employee](
    [Emp_ID] [int] NOT NULL,
    [Emp_Name] [nvarchar](50) NOT NULL,
    [Emp_Salary] [int] NOT NULL,
    [Emp_City] [nvarchar](50) NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED
    (
        [Emp_ID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------
INSERT INTO Employee
SELECT 1, 'Pankaj', 25000, 'Alwar' UNION ALL
SELECT 2, 'Rahul', 26000, 'Alwar' UNION ALL
SELECT 3, 'Sandeep', 25000, 'Alwar' UNION ALL
SELECT 4, 'Sanjeev', 24000, 'Alwar' UNION ALL
SELECT 5, 'Neeraj', 28000, 'Alwar' UNION ALL
SELECT 6, 'Naru', 20000, 'Alwar' UNION ALL
SELECT 7, 'Omi', 23000, 'Alwar';
---------
Select * from Employee
------



--How to use a cursor in SQL?

--To use a cursor, you must declare and execute a cursor. The process includes the following five steps.

--Declare Cursor: In this part, we declare variables and return a set of values.
--Open: This is the entering part of the cursor.
--Fetch: Used to retrieve the data row by row from a cursor.
--Close: This is an exit part of the cursor and is used to close a cursor.
--Deallocate: In this part, we delete the cursor definition and release all the system resources associated with the cursor.

----------------------Cursors
SET NOCOUNT ON;

DECLARE @EMP_ID INT;
DECLARE @EMP_NAME NVARCHAR(MAX);
DECLARE @EMP_SALARY INT;
DECLARE @EMP_CITY NVARCHAR(MAX);


-- step 1 creating cursor
DECLARE EMP_CURSOR CURSOR  --- declare ur_cursorname cursor
    LOCAL FORWARD_ONLY FOR
    SELECT * FROM Employee;
OPEN EMP_CURSOR;   -- step 2 

FETCH NEXT FROM EMP_CURSOR INTO @EMP_ID, @EMP_NAME, @EMP_SALARY, @EMP_CITY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'EMP_ID: ' + CONVERT(NVARCHAR(MAX), @EMP_ID) + '  EMP_NAME ' + @EMP_NAME 
	+ '  EMP_SALARY ' + CONVERT(NVARCHAR(MAX), @EMP_SALARY) + '  EMP_CITY ' + @EMP_CITY;

    FETCH NEXT FROM EMP_CURSOR INTO @EMP_ID, @EMP_NAME, @EMP_SALARY, @EMP_CITY;
END;

CLOSE EMP_CURSOR;
DEALLOCATE EMP_CURSOR;
------------------------------

Select * from Std
Select * from fees

----stdid fnmae lname Amount

 declare @stdId int
 declare @fname varchar(50)
 declare @lname varchar(50)
 declare @Amount int

 declare mycursor cursor 
  LOCAL FORWARD_ONLY FOR

Select s.stdid,fname,lname,Amount
from std as s join fees as f
on s.stdId= f.StdId

open mycursor

FETCH NEXT FROM mycursor INTO @stdId, @fname, @lname, @Amount;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Std_ID: ' + CONVERT(NVARCHAR(MAX), @stdId) + '  FNAME ' + @fname + '  LName ' + @EMP_CITY
	+ '  EMP_SALARY ' + CONVERT(NVARCHAR(MAX), @EMP_SALARY) ;

    FETCH NEXT FROM EMP_CURSOR INTO @EMP_ID, @EMP_NAME, @EMP_SALARY, @EMP_CITY;
END;

CLOSE mycursor;
DEALLOCATE mycursor;