/*--Create a trigger that fires on insert into the table ServiceGrant. It should intercept the insert and check to see if the amount requested is greater than the maximum allowed for that service. If it is it should write the  requestKey, the personKey, the serviceKey, the grantdate,  the requested amount, the maximum amount and the difference to a new table. If it isnt greater than the maximum amount allowed for the service, it should go ahead with the insert.*/

GO
CREATE TRIGGER tr_MoreThanMax on ServiceGrant
AFTER INSERT
As
DECLARE @GrantAmount money
DECLARE @MaximumAllowed money
DECLARE @PersonKey int
DECLARE @ServiceKey int
DECLARE @MaxAllowed money
DECLARE @GrantKey int
DECLARE @GrantDate date

SELECT @GrantAmount = GrantAmount, @PersonKey = PersonKey, @ServiceKey = ServiceKey, @GrantKey = GrantKey, @GrantDate = GrantDate FROM inserted
	SELECT @MaxAllowed = ServiceMaximum FROM CommunityService
	WHERE ServiceKey = @ServiceKey

IF @GrantAmount > @MaxAllowed
	BEGIN
		IF NOT EXIST
			(SELECT name fFROM sys.tables WHERE name = 'GrantsAboveRequest')
				BEGIN
					CREATE TABLE GrantsAboveRequest
					 (	GrantKey int,
						PersonKey int,
						GrantAmount money,
						GrantDate date,
						ServiceKey int,
						GrantDifference money 
					)
				END
INSERT INTO GrantsAboveRequest ( GrantKey, PersonKey, GrantAmount, GrantDate, ServiceKey, GrantDifference)
values (@GrantKey, @PersonKey, @GrantAmount, @GrantDate, @ServiceKey, @GrantAmount - @MaxAllowed)
END
			
	INSERT INTO ServiceGrant ( GrantAmount, PersonKey, ServiceKey, GrantDate)
	values (500, 1, 1, getDate())
SELECT * FROM GrantsAboveRequest
