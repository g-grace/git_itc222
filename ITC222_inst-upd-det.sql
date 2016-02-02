Use community Assist.

    /*Insert the following new donor. This will require inserts into several tables. You do not have to worry about the seed or hashed password for now. Remember the tables have identities for keys. You cannot insert into an identity column, but you will need the value of the key as a foreign key to relate the records in the different tables.*/

Sara Wilson
1201 Washington Ave.
Seattle, Wa. 98001
Cell: 4345551243
Home: 2065550067
email: swilson@nwenterprises.org
plain Password: saraPass
Donation: $1200

Select Donation from PersonContact

Insert into Person (PersonLastName, PersonFirstName, PersonUsername, PersonPlainPassword)
values('Wilson','Sara','swilson@nwenterprises.org','saraPass')
insert into PersonAddress (Street,State,City,Zip)
values ('1201 Washington Ave.','WA','Seattle','98001')
insert into PersonContact (ContactInfo)
values ('4345551243')
insert into PersonContact (ContactInfo)
values ('2065550067')
insert into Donation (DonationAmount)
values ('1200')


2. Insert the following new Employee:

Barbara Nadar
Apt 121
3400 North Edison Street
Seattle, Wa. 98100
Cell:5345559012
email: bnadar@Hotmail.com
HireDate: current date
Social Security Number: 518-22-1234
Dependents: 2
Status: PT
Monthly Salary: $2000

Insert into Person(PersonLastName, PersonFirstName, PersonUsername)
values('Nadar','Barbara','bnadar@hotmail.com')
Insert into PersonAddress(Street,Apartment,State,City,Zip)
values('3400 North Edison Street','Apt 121','WA','Seattle','98100')
Insert into PersonContact(ContactInfo)
values('5345559012')
Insert into Employee(EmployeeHireDate, EmployeeSSNumber, EmployeeDependents, EmployeeStatus, EmployeeMonthlySalary)
values('03/02/2015','518-22-1234','2','PT','2000.00')


Make the following Updates:

3. Change the address at PersonAddressKey 81 so that the street is "1000 South Eastern, Seattle, WA, 98100"


Update PersonAddress
Set Street = '1000 South Eastern', 
State = 'WA',
City = 'Seattle',
Zip = '98100'
where PersonAddressKey=81

4. Update the address at PersonAddressKey 83 to read "221 Broadway, Seattle, Wa, 98100"

Update PersonAddress
Set Street = '221 Broadway',
City = 'Seattle',
State = 'WA',
Zip = '98100'
where PersonAddressKey = 83

5. .Change the lifetime service maximum so that all are increased by 5%.

Update CommunityService
Set ServiceLifetimeMaximum = (ServiceLifetimeMaximum * 0.05) + ServiceLifetimeMaximum

Delete the following records

6. Delete "holiday" from CommunityService


Delete from CommunityService
where ServiceName = 'holiday'

7. Delete "pager" and "Fax" from ContactType


DELETE FROM ContactType
where ContactTypeName = 'pager' and ContactTypeName = 'fax'





