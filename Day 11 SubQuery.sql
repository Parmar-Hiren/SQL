Select * from Employee

-------------Subquery------------------------------

Select 'Rahul' as 'Name'


Select (Select 'Rahul') as 'First name'


Create Table tblProducts
(
 [Id] int identity primary key,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
)

Create Table tblProductSales
(
 Id int primary key identity,
 ProductId int foreign key references tblProducts(Id),
 UnitPrice int,
 QuantitySold int
)

Insert into tblProducts values ('TV', '52 inch black color LCD TV')
Insert into tblProducts values ('Laptop', 'Very thin black color acer laptop')
Insert into tblProducts values ('Desktop', 'HP high performance desktop')

Insert into tblProductSales values(3, 450, 5)
Insert into tblProductSales values(2, 250, 7)
Insert into tblProductSales values(3, 450, 4)
Insert into tblProductSales values(3, 450, 9)


Select *  from tblProducts
Select *  from tblProductSales


--------------Write a query to retrieve products that are not at all sold?
Select *  from tblProducts
Select *  from tblProductSales

Select p.Id as 'Product id',Name, Description,UnitPrice,QuantitySold
from tblProducts as p  left join tblProductSales as ps
on p.Id =ps.ProductId
where UnitPrice is null

-- null is an unknown datatype 
-- NUll cannot be compared 



Select [Id], [Name], [Description]
from tblProducts
where Id not in (Select Distinct ProductId from tblProductSales)



---Write a query to retrieve the NAME and TOTALQUANTITY sold, using a subquery
Select *  from tblProducts
Select *  from tblProductSales

Select [Name],
(Select SUM(QuantitySold) from tblProductSales where ProductId = tblProducts.Id) as TotalQuantity
from tblProducts
order by Name

---

	
