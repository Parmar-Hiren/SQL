Select DATEADD(dd,4,getdate())

-- dob => years

Select DATEDIFF(yy,'05/12/1990', getdate())
--DateName
Select DATENAME(DW,getdate())

Select DATENAME(MONTH,getdate()) -- name

Select DATEPART(dd,getdate())
-----------------------------TRIGGERS------------------------
-- Trigger is a special kind of "STORED PROCEDURE" that gets executed whenever
-- any DML opeartion takes place

--DML Operations => Insert, update,Delete

Select * from std

-- exec sp_InsertStd 12,'MS','Dhoni','Mumbai'

Select * from Insertlog

-- exec sp_DeleteStd 11
--Create table InsertLog
--(
--Id int primary key identity(1,1),
--Descp varchar(max)
--)



Alter TRIGGER trgStdInsert
ON Std
For INSERT 
AS
BEGIN
    --print 'Data inserted successfully'
	insert into Insertlog values  ('The record was inserted on '+ CONVERT(varchar(max), getdate()))
END


---------Delete Trigger
Create TRIGGER trgStdDelete
ON Std
For Delete
AS
BEGIN
    --print 'Data inserted successfully'
	insert into Insertlog values  ('The record was deleted on '+ CONVERT(varchar(max), getdate()))
END


Select * from std

-- exec sp_InsertStd 12,'MS','Dhoni','Mumbai'

Select * from Insertlog

-- exec sp_DeleteStd 10

-------------Update Trigger
Select * from std

Select * from Insertlog

exec sp_UpdateStd 9,'Hetal','Gala','Gujarat'


Create TRIGGER trgStdUpdate
ON Std
For Update
AS
BEGIN
    --print 'Data inserted successfully'
	insert into Insertlog values  ('The record was updated on '+ CONVERT(varchar(max), getdate()))
END

------------------------------
Create TRIGGER  trgStdDelete2
ON STd
FOR DELETE
AS
begin
SELECT * FROM Deleted -- Magic Table
end


Select * from std


exec sp_DeleteStd 11
------------------------
Create TRIGGER  Trigger_ForInsertdeletemagic
ON std
FOR UPDATE
AS
begin
SELECT * FROM INSERTED
SELECT * FROM DELETED
end

---- Maalav ka =>shah ko gandhi & Mumbai ko Jamnagar
Select * from std

exec sp_UpdateStd 8,'Maalav','Gandhi','Jamnagar'


------------------------------------Hiren---------------------------------

USE Student

CREATE TABLE Std (
    Id INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE InsertLog (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Descp VARCHAR(MAX)
);

CREATE PROCEDURE sp_InsertStd
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Location VARCHAR(50)
AS
BEGIN
    INSERT INTO Std (FirstName, LastName, Location)
    VALUES (@FirstName, @LastName, @Location);
END;

CREATE TRIGGER trgStdInsert
ON Std
AFTER INSERT 
AS
BEGIN
    DECLARE @CurrentTime VARCHAR(MAX);
    SET @CurrentTime = CONVERT(VARCHAR(MAX), GETDATE());

    INSERT INTO InsertLog (Descp)
    VALUES ('A record was inserted on ' + @CurrentTime);
END;

EXEC sp_InsertStd 'Parmar', 'Hiren', 'Galsana';

SELECT * FROM Std;
SELECT * FROM InsertLog;