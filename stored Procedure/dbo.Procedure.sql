
CREATE PROCEDURE [dbo].[resetPasswordrequest]
@email nvarchar(100)
as
Begin
 Declare @UserId nvarchar(50)
 
 
 Select @UserId = Acc_id
 from Account_detail
 where Email_id = @email
 
 if(@UserId IS NOT NULL)
 Begin
  --If username exists
  Declare @GUID UniqueIdentifier
  Set @GUID = NEWID()
  
  Insert into ResetPassword
  (Id, UserId, ResetRequestDateTime)
  Values(@GUID, @UserId, GETDATE())
  
  Select 1 as ReturnCode, @GUID as UniqueId, @email  as Email_id
 End
 Else
 Begin
  --If username does not exist
  SELECT 0 as ReturnCode, NULL as UniqueId, NULL as Email_id
 End
End

--	@param1 int = 0,
--	@param2 int
--AS
--	SELECT @param1, @param2
--RETURN 0
