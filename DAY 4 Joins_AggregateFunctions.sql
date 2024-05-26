-- Function (1)System Defined (2)USer Defined
---- System Defined
--1) AGGREGATE FUNCTIONS
--2) String FUNCTIONS
--3) Date function

--------------------AGGREGATE FUNCTIONS (In-built functions)
--1)Sum
--2)Max
--3)Min
--4)Count
--5)Count(*)

-- ** Wheneve ur  using aggregate function
--1) Jab kabhi Aggregate function use kar rhe ho,aggregate function wale column ko chod kar
-- select list mein jo bhi columns hai usko GROUP by mein daalo

Select * from Std
Select * from fees


-- Std Id 2 ka total fees 
Select s.StdId,fname,lname,Sum(Amount) as 'Total fees paid',
count(Amount) as 'No of times fees paid', Max(Amount) [Max fees], min(Amount) [Min fees]
from Std as s join fees as f
on s.stdId =f.StdId
group by s.StdId,fname,lname

--------------------------------

Select stdid,sum(Amount)
from fees
where StdId=2
group by stdid

------------------------------String Function (In-built functions)
---1) Len
Select Len('Rahul')

Select * from std

Select * ,LEN(fname) from std
---2) Reverse
Select REVERSE('Soni')

Select * from std

Select * ,REVERSE(fname) from std

---3) Substring
Select Substring('Good Morning',1,4)

Select SUBSTRING('I like SQL',8,3)

--- Initials AP,HP,RM, RC, GK  -- As an assignment
--Select *, SUBSTRING() from std


---4)REPLACE
Select REPLACE('I like IceCream','IceCream','SQL')

--5 
Select REPLICATE('Hiren ',5)

--6 
Select LOWER('SUNIL')
--7 
Select UPPER('sunil')

--8) STUFF
Select STUFF('I like IceCream',1,6,'I love')

--9)
select ASCII('A')

-- 10)
select CHAR(65)

--11)
Select RIGHT('Sunil',2)

--12)
Select Left('Sunil',2)

--13) 

Select ('                             Sunil                             ')
Select Ltrim('                             Sunil                             ')
--14
Select ('                             Sunil                             ')
Select Rtrim('                             Sunil                             ')
