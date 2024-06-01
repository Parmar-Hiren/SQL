select * from [dbo].[person]

select * into Person1 from Person


select * from [dbo].[person]
select * from [dbo].[person1]
-----------------------------
Select s.stdid,fname,lname,Amount
from std as s join fees as f
on s.stdId= f.StdId

----- What is Temp Table ??

--Physical Table /Actual Table

Create table #MyTempTable
(
id int identity(1,1),
fname varchar(50)
)

Insert into #MyTempTable values ('Soni')

Select * from #MyTempTable

Create table ##MyGlobalTempTable
(
id int identity(1,1),
fname varchar(50)
)

Insert into ##MyGlobalTempTable values ('Soni 2')

Select * from ##MyGlobalTempTable