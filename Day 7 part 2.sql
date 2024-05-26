Select * from Std
Select * from fees

Begin Try
	Begin Transaction

 Insert into  Std  values 
 (12,'test 12','test 12','city 12')

  Insert into  Std  values 
 (22,'test 2','test 2','city 2')
  commit transaction

End Try

Begin Catch -- error aaya toh catch mein jayega
	rollback transaction

End catch





 -- commit or rollback








