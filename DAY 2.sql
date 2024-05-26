Select * from person

Insert into Person values ('Gaurav','Kamble','Mumbai','Male','gk@gmail.com','pass@123',400101)

Insert into Person (fname,lname,City)values ('Disha','Gandhi','Mumbai')

----------------------OPeartors-------------------
--1) Logical Opeartor (and , or , not)
--2) Mathematical Opeartor (+,-)
--3) Conditional Operator (<,>,<=,>= !=)
--4) WildCard Opeartor (like)
--5) List Operator (IN, NOt IN)
--6) Range Operator (Between, Not Between)


--where =>filter ur record (table scan)

select * from Person
where Pid =5
--------------------------

Create table Marks
(
M_Id int primary key identity (1,1),
English int,
Science int,
Maths int,
Algebra int 
)

Select * from Marks

--Insert into Marks values (88,67,45,78)
--Insert into Marks values (87,64,34,67)
--Insert into Marks values (78,44,67,65)
--Insert into Marks values (98,99,78,45)
--Insert into Marks values (28,66,79,34)

-----------------MAthematical Operator---------
Select * from Marks

Select *, English+Science+Maths+Algebra as 'Total Marks' from Marks

Select *,English+Science+Maths+Algebra as 'Total Marks' ,
(English+Science+Maths+Algebra) /4 as 'Percentage' from Marks
-----------------Conditional Operator---------
-- english marks >=70

Select * from Marks

Select * from Marks
where English >=70

---- Maths marks <=45

Select * from Marks
where Maths <=45


--science 99 nahi hai
Select * from Marks

Select * from Marks
where science !=99

-----------------LOGICAL Operator(and , or ,not)---------
Select * from Marks

Select * from Marks
where English=98

-- English=98 Algebra 45
Select * from Marks

Select * from Marks
where English=98 and Algebra=45

---------------------
Select * from Marks

Select * from Marks
where English=98 and Algebra=34

--Anirudh = -
--Hiren = 
--Ratnesh = -
--Rahul = -
--Soni = 4 ,5
--Gaurav = 4,5
--Disha = 4,5
--Arbaaz= 4,5
--Shweta = 4
--------------------------
Select * from Marks

Select * from Marks
where English=98 or Algebra=34

--------science 44 nahi hai , maths 45 nahi hai----------
Select * from Marks

Select * from Marks
where science !=44  and Maths !=45

-----------------LIst Operator (In,not in)---------
Select * from Person

Select * from Person
where fname = 'Rahul' or fname = 'Hiren'

Select * from Person
where fname in('Rahul' ,'Hiren')

Select * from Person
where fname not in('Rahul' ,'Hiren')

---------------------------Range Operator (Between & Not Between)=> int and

Select * from Marks
--maths 30 to 60

Select * from Marks
where Maths between 30 and 60
---------not between
Select * from Marks

Select * from Marks
where Maths not between 30 and 60
