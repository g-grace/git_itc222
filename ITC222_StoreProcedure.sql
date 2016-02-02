/*--Create a procedure that shows the name, email, address and contact numbers for a person. Pass in the personKey as a parameter.*/

GO
CREATE proc usp_GetRegisteredPerson
@PersonID varchar
AS
SELECT PersonLastName, PersonFirstName, PersonUserName, Street, City, State, Zip, ContactInfo
FROM Person p
INNER join PersonAddress pa
ON p.PersonKey=pa.PersonKey
INNER join PersonContact pc
ON pc.PersonKey=p.PersonKey
WHERE p.PersonKey=@PersonID 	
EXEC usp_GetRegisteredPerson

--Create a procedure that returns the total number granted and the total amount allocated for a particular service. Enter the ServiceKey as a parameter.
SELECT* FROM ServiceGrant
GO 
CREATE proc usp_TotalNumberGranted
@ServiceKey int
AS
SELECT COUNT(GrantApprovalStatus)[Total Number Granted] FROM ServiceGrant sg
WHERE (GrantApprovalStatus)='approved'
AND ServiceKey = @ServiceKey
EXEC usp_TotalNumberGranted 2

--these are more complex stored procedures.
--Create a procedure that inserts a new client (theirs, name, address and contact numbers, and lets them apply for a service grant. (You do not have to insert into GrantReviewDate, GrantApprovalStatus, or GrantAllocation).

       --This stored procedure should check to see if the person already exists in the database.
       --If they DON'T it should insert all the information
       --If they do it should only insert the grant request information. (don't forget to get the personKey for the person if they do exist)
      --they DO exist
      --It should use a transaction and a try catch
      --if there is any error in any of the inserts it should roll back all the transactions and print a message

GO
CREATE proc usp_InsertNewPerson
@PersonLastName varchar(25),
@PersonFirstName varchar(25),
@Street varchar(255),
@City varchar(25),
@State char(2),
@Zip varchar(5),
@ContactInfo varchar(15)
As
	IF exists (SELECT PersonLastName, PersonFirstName
	FROM Person p
	INNER JOIN PersonAddress pa
	ON p.PersonKey=pa.PersonKey
	WHERE Street=@Street
	AND City=@City
	AND State=@State
	AND Zip=@Zip)

	BEGIN
	PRINT 'This client is already exist in the database!'
	RETURN
	END

	BEGIN tran
	BEGIN try
	INSERT INTO Person(PersonLastName, PersonFirstName)
	values(@PersonLastName, @PersonFirstName)
	INSERT INTO PersonAddress(Street, City, State, Zip)
	values(@Street, @City, @State, @Zip)
	COMMIT tran
	END try
	BEGIN Catch
	ROLLBACK tran

	END catch

	EXEC usp_InsertNewPerson 


--The next stored procedure should let a person update their own name, email, address and contact information. Again, it should use transactions and error trapping and rollback if there is any error
GO
CREATE proc usp_UpdatePersonalInfo
@PersonLastName varchar(25),
@PersonFirstName varchar(25),
@PersonUserName varchar(25),
@Street nvarchar(255),
@City nvarchar(25),
@State char(2),
@Zip nvarchar(5),
@ContactInfo nvarchar(15)

AS
DECLARE @PersonKey int
IF exists(	
	SELECT PersonLastName, PersonFirstName, PersonUsername
	FROM Person 
	WHERE PersonLastName=@PersonLastName
	AND PersonFirstName=@PersonFirstName)

	BEGIN Tran
	BEGIN Try

	UPDATE Person
	SET PersonUsername = @PersonUsername
	WHERE PersonKey = @PersonKey

	UPDATE PersonAddress
	SET Street=@Street,
	City=@City,
	State=@State,
	Zip=@Zip
	WHERE PersonKey=@PersonKey
	
	UPDATE PersonContact
	SET ContactInfo = @ContactInfo
	WHERE PersonKey = @PersonKey
	
COMMIT tran
	END try
	BEGIN Catch
	ROLLBACK tran
	END catch
	END
	ELSE
		
	BEGIN
	PRINT 'No record found. Please create a new record.'
	RETURN
	END

	
