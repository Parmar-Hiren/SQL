--- Local Variable

declare @fname varchar(50)
set @fname ='Disha'

print 'Hello '+@fname
Select 'Hello '+@fname
-------------------------------------
declare @lname varchar(50)
select @lname= lname from std where stdid=3
print 'ur lname is '+@lname

--set @lname=select lname from std where stdid=2
----------------------
select * from std

declare @@myCity varchar(50)
select @@myCity = city from std where stdId=8

select @@myCity