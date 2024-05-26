Select * from Std

---What is Stored Procedure ??
-- SP is a PRE-COMPILED object stored in db

-- food is already prepared by MOM
-- Time save (reduces Network traffic)
-- avoids SQL INJECTION 

insert into std values (6,'Soni','Sahani','Mumbai')


Create procedure sp_InsertStd
(
@id int,
@fname varchar(50),
@lname varchar(50),
@City varchar(50)
)
as
Begin

insert into std values (@id,@fname,@lname,@City)

End

---
exec sp_InsertStd  8,'drgrtet','ertertet','reterttret'


Select * from Std
---------------------------------------------
Update std
set city ='Assam'
where stdId=4

Create procedure sp_UpdateStd
(
@id int,
@fname varchar(50),
@lname varchar(50),
@City varchar(50)
)
as
Begin

Update std
set fname =@fname,lname=@lname,city =@City
where stdId=@id

End
----------------------------------
Select * from Std

exec sp_UpdateStd 7,'Disha','Shah','Jaipur'


-----------------------DELETE------------------
Create procedure sp_DeleteStd
(
@id int 
)
as
Begin

Delete from std
where stdId=@id

End

--
exec sp_DeleteStd 8

--------------------------------------------
Select * from std
Select * from fees

--stdid fname lname amount

exec [sp_GetTotalFees_ById] 4
--------------------------------------------------

Create proc [dbo].sp_GetlFeesDetails_ById
(
@stdid int 
)
As
Begin

Select s.stdid, fname,lname,amount 
from std as s join fees as f
on s.stdId = f.StdId
where s.stdId=@stdid


End


---
exec [sp_GetTotalFees_ById] 4

exec sp_GetlFeesDetails_ById 4
--------------------------------------Date Functions
--DateAdd
--DateDiff
--DateName
--DatePart

--1)DateAdd

Select getdate()
Select DATEADD(m,2,getdate())

--D, y, mm  => DatePart
Select DATEADD(YYYY,2,getdate())
 

-- DOB 
--2)DateDiff
Select DateDiff(YY,'05/18/2000',getdate())
Select DateDiff(DD,'05/18/2000',getdate())
Select DateDiff(MM,'05/18/2000',getdate())