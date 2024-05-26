--A transaction is a group of commands that change the data stored in a database.
--A transaction, is treated as a single unit. 
--A transaction ensures that, either all of the commands succeed, or none of them.
--If one of the commands in the transaction fails, all of the commands fail, 
--and any data that was modified in the database is rolled back.
--In this way, transactions maintain the integrity of data in a database.

Create Table tblMailingAddress
(
   AddressId int NOT NULL primary key,
   EmployeeNumber int,
   HouseNumber nvarchar(50),
   StreetAddress nvarchar(50),
   City nvarchar(10),
   PostalCode nvarchar(50)
)

Select * from tblMailingAddress
Insert into tblMailingAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')

----------------------------
Create Table tblPhysicalAddress
(
 AddressId int NOT NULL primary key,
 EmployeeNumber int,
 HouseNumber nvarchar(50),
 StreetAddress nvarchar(50),
 City nvarchar(10),
 PostalCode nvarchar(50)
)

Insert into tblPhysicalAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')

Select * from tblPhysicalAddress



--------------------------------------
Select * from tblMailingAddress
Select * from tblPhysicalAddress
Create Procedure spUpdateAddress
as
 Begin
 Begin Try
  Begin Transaction
   Update tblMailingAddress set City = 'LONDON' 
   where AddressId = 1 and EmployeeNumber = 101
   
   Update tblPhysicalAddress set City = 'LONDON' 
   where AddressId = 1 and EmployeeNumber = 101

  Commit Transaction
 End Try

 Begin Catch -- error aaya
  Rollback Transaction
 End Catch
End




-----------------------------------------------------------------------------
--------------------------------------
Select * from tblMailingAddress
Select * from tblPhysicalAddress

Alter Procedure spUpdateAddress
as
Begin
 Begin Try
  Begin Transaction
   Update tblMailingAddress set City = 'LONDON12' 
   where AddressId = 1 and EmployeeNumber = 101
   
   Update tblPhysicalAddress set City = 'LONDON13' 
   where AddressId = 1 and EmployeeNumber = 101
  Commit Transaction
 End Try
 Begin Catch -- error aaya toh catch mein jayega
  Rollback Transaction
 End Catch
End

