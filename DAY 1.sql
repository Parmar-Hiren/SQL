---What is SQL  ??-Structured Query Language

------------- Syantax for table creation
--Create table tablename
--(
--col1 datatype,
--col2 datatype,
--)

-- no special character in column name except underscore_
-- no spaces (both table & Column name)

Create table std
(
stdId int,
fname varchar(30),
lname varchar(30),
city varchar(30) 
)

-----------DML Operation(DATA MANIPULATION LANGUAGE (INSERT,UPDATE,DELETE) )

-- syntsx for insert
-- insert into tablename values (,,,,)
Select * from std

Insert into std values (1,'Anirudh','Pandey','Mumbai')

Insert into std values (2,'Hiren','Parmar','Ahmedabad')
Insert into std values (3,'Ratnesh','Mishra','Mumbai')
Insert into std values (4,'Rahul','Chauhan','Delhi')

------------UPDATE-

-- update tablename set col1 ='new value',col2=''

update std
set city ='Mumbai'  -- kis ka value update karna hai
where stdId =1


update std
set city ='Assam'  -- kis ka value update karna hai
where stdId =3

Select * from std

--** The smallest thing that can b updated is a CELL
--** The smallest thing that can b deleted is a ROW

Delete from std where stdId=4

---------CONSTRAINT (PK) & Identity

--PK
Create table emp
(
EmpId int primary key identity(100,2),
fname varchar(20)
)

Select * from emp

Insert into emp values ('Rahul')


---Pid,fname,lname,City, Gender,emailId, pass,Pincod

Create table person
(
Pid int primary key identity (1,1),
fname varchar(25),
lname varchar (25),
City varchar (25),
Gender varchar(10),
Emailid varchar(25),
pass varchar(20),
Pincode int
)


Insert into person values ('Hiren','Parmar','Ahemdabad','Male','hiren@bmail.com','HC@12345',400069)
Select * from person

update person
set pass ='xyz@789',Pincode=400103
where pid=1

-- table creation,DML,Primary Key,Identity

--** insert => new row will b inserted

insert into person (fname,lname) values ('Vansh','Chinoy')