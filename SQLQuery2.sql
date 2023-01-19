select * from Position
go
Alter Proc usp_InsertIntoPosition(
									@PostionCode char(4),
									@Description varchar(35),
									@BudgetStrength int,
									@Year smallint,
									@CurrentStrngth int
									)
as
if(exists(Select 'a' from Position Where cPositionCode=@PostionCode))
    begin
        return -1
    end
else
    begin
        Insert into Position(cPositionCode, vDescription,iBudgetedStrength,siYear,iCurrentStrength)
				values (@PostionCode, @Description,@BudgetStrength,@Year,@CurrentStrngth)
        return 1
    end
go
exec usp_InsertIntoPosition '0989','abc',1200,2023,100
