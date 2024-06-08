
---- VIews-------
-- What is a View?
-- A view is nothing more than a saved SQL query. 
-- A view can also be considered as a virtual table (imaginary table).


CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

-- SQL Script to create tblDepartment table: 
CREATE TABLE tblDepartment
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

--Insert data into tblDepartment table
Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2,'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')

---Insert data into tblEmployee table
Insert into tblEmployee values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3,'Pam', 6000, 'Female', 1)
Insert into tblEmployee values (4,'Todd', 4800, 'Male', 4)
Insert into tblEmployee values (5,'Sara', 3200, 'Female', 1)
Insert into tblEmployee values (6,'Ben', 4800, 'Male', 3)
---------------------------
select * from  tblEmployee
select * from  tblDepartment

Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

----------------------------------

Create View vWEmployeesByDepartment
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

-------------
select * from  tblEmployee
select * from  tblDepartment

SELECT * from vWEmployeesByDepartment

update tblEmployee
set Name='Soni'
where Id =3

-----m updating my view
update vWEmployeesByDepartment
set Name='Hiren',DeptName='Accounting'
where Id =4

-- Sp vs Views
-- Performance wise which is faster View or Sp?? 



