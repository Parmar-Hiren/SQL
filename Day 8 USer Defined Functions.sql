--1) SYSTEM DEFINED FUNCTION ( string, date)

-----------------User Defined Functions----------------
--1)Scalar function   -- it will return SINGLE VALUE

--2)Table level functions -- it will return TABLE

--3) MUlti Level Function (Self Study)

------------------1)Scalar function   -- it will return SINGLE VALUE(single cell)


select * from std
-- jis mein std id pass karne par uska "FNAME" return aana chahiye

Alter FUNCTION GetStudentName
(
@StdId INT
)  
 RETURNS VARCHAR(50)  
 AS  
BEGIN  
    RETURN (SELECT fName+' '+lname FROM std WHERE stdId=@StdId)  
END 


---- 
Select  dbo.GetStudentName(2)

------------------1)Table level functions   -- it will return TABLE
select * from std


Create function GetStudentDetailsById
(
@StdId int
)
RETURNS TABLE AS  
Return select * from std where stdId= @StdId
--

select * from dbo.GetStudentDetailsById (4)
-------------------------------------------------------

Select * from Std
Select * from fees


---- Output => total Fees, i will pass Student Id
Create function GetTotalFees_By_StdId
(
@stdid int
)
Returns int
As
Begin
Return (Select Sum(amount) from fees where StdId= @stdid)

End

---
select dbo.GetTotalFees_By_StdId(2)
------------------------------------------------------------------
---stdiD Fname lname Total Fees

Create function GetTotalFeesbystdid
(
@stdid int
)
Returns table as
Return 
Select s.stdid,fname,lname,Sum(Amount) as 'Total Fees'
from std s inner join fees f on 
s.stdid=f.stdid
where s.stdid=@stdid 
group by s.stdid,fname,lname 
-------------------

Select * from Std
Select * from fees

Select * from GetTotalFeesbystdid(2)
---------------------------------------------------
-- Can we call a function inside a Stored Procedure  ?? YES
--** Can we call a Stored Procedure inside a function  ?? NO


Create proc Test
(
@Stdid int
)
As 
Begin

Select * from GetTotalFeesbystdid(@Stdid)
End

--exec Test 1

Create proc myProc
As
Begin
   Select * from Std
End
------------------
Create function GetTotalData
(
@stdid int
)
Returns table as
Return 
  myProc