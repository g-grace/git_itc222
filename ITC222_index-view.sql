Use CommunityAssist again:
All of these are non-clustered indexes:


Create nonclustered Index ix_LastName on Person(LastName)	
Create unique index ix_ServiceName on Customer.AutoService(ServiceName)

    --Place an index on DonationDate in Donation;

	Create nonclustered Index ix_DonationDate on Donation(DonationDate)

    --Place an index on Personkey in Donation

	Create nonclustered Index ix_PersonKey on Donation(PersonKey)

    --Place an index on PersonKey in PersonAddress

	Create nonclustered Index ix_PersonKey on PersonAddress(PersonKey)

    --Place an index on PersonKey in PersonContact

	Create nonclustered Index ix_PersonKey on PersonContact(PersonKey)

    --Place an index on LastName in Person

	Create nonclustered Index ix_PersonLastName on Person(PersonLastName)

    --Place a filtered index on GrantDate in serviceGrant where GrantReview date is null

Views

    --Create a view that gives the employees first name, last name, the date they were hired, their job title, Their status and their salary

	Create View vw_Employees 
	as 
	Select PersonFirstName[First Name], PersonLastName[Last Name], EmployeeHireDate[Hire Date], JobTitleName[Job Title],	EmployeeStatus[Status], EmployeeMonthlySalary[Employee Monthly Salary]   
	from Person p, Employee e, JobTitle jt
	inner join Employee e
	on p.PersonKey=e.PersonKey
	inner join JobTitle jt
	on jt.JobTitleKey=p.PersonKey

    --Create a view that gives the names and emails of all donors

	Create View vw_DonorsList
	As
	Select PersonFirstName[First Name], PersonLastName[Last Name], PersonUsername[Email]
	from Person p
	where DonationAmount > 0 

    --Create a view that shows the total grants requested, and the total allocated by year and month

	Create View vw_TotalGrantsRequested 
	As
	Select Sum(GrantAmount)[Grant Amount], Sum(GrantAllocation)[Grant Allocation] from ServiceGrant 
	group by month(GrantDate) 

    --Create a view that shows the number of grants reviewed per year and month

	Create View vw_NumberofGrants
	As
	Select count(GrantReviewDate)[Grants Reviewed] from ServiceGrant
	group by month(GrantDate)

