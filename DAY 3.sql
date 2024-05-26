-------------------Wild card operatorS

Select * from [dbo].[person]
where fname='Rahul'


--- only fname starting with R

Select * from [dbo].[person]
where fname like 'R%'

--- only City ending with i
Select * from [dbo].[person]

Select * from [dbo].[person]
where City like '%i'

--- only fname 2nd letter A
Select * from [dbo].[person]
where fname like '_a%'

--- only fname 2nd letter A or i
Select * from [dbo].[person]
where fname like '_a%' or fname like '_i%'

Select * from [dbo].[person]
where fname like '_[a,i]%' 
-----------------------
Select * from [dbo].[person]

-- lname mein kahin par bhi 'a'
Select * from [dbo].[person]
where lname like '%a%' 

-------------------
--lname ka second lst letter 'a'
Select * from [dbo].[person]

Select * from [dbo].[person]
where lname like '%[a,o]_'

--------------------------Constraints(Rules)---------------------------
Select * from Std

-----Foreign key 

Create table fees
(
Fid int primary key identity(1,1),
StdId int foreign key references std(stdid),
Amount int
)
Select * from Std
Select * from fees

insert into std values(4,'Rahul','Chauhan','Ahmedabad')


Insert into fees values (1,2500)

-------------------------------80% sql (joins)
--1)Inner JOin / Join        (matching data)
--2)Left Join / Left Outer Join (left side ka poora record dega)
--3)Right JOin / Right Outer Join   (right side ka poora record dega)

Select * from Std
Select * from fees

Select s.StdId,fname,lname,Amount
from Std as s inner join fees as f
on s.stdId =f.StdId
