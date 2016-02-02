USE CommunityAssist
create function fx_donationpercentage
(@donation money,
@percentage decimal(6,3))
Returns money
AS
BEGIN
Declare @percentamount money
if @percentage > 1
set @percentamount = @percentage* @donation /100.0
else
set @percentamount = @percentage*@donation
return @percentamount
END
Go

SELECT dbo.fx_donationpercentage(1000, 0.85) [Charity], dbo.fx_donationpercentage(1000, 15) [Org Fee]

create function fx_allocationpercentage
(@grantrequest money,
@allocatedamount money)
returns decimal (6,3)
AS
Begin
Declare @allocationpercentage decimal
Set @allocationpercentage = @allocatedamount / @grantrequest
Return @allocationpercentage
End

Go

SELECT GrantKey, dbo.fx_allocationpercentage(GrantAmount, GrantAllocation) [Percent Allocated] FROM ServiceGrant

SELECT AVG (dbo.fx_allocationpercentage(GrantAmount, GrantAllocation)) [Average Allocation Percentage] From ServiceGrant

create function fx_servicegrantdifference
(@grantallocation money,
@servicemaximum money,
@servicekey int)
returns money
AS
BEGIN
declare @servicegrantdifference money
select @servicemaximum = ServiceMaximum from communityservice
where @servicekey = servicekey
set @servicegrantdifference = @servicemaximum - @grantallocation
return @servicegrantdifference
END

select cs.servicekey, [dbo].[fx_servicegrantdifference](GrantAllocation, ServiceMaximum, cs.ServiceKey) from CommunityService cs join 
