CREATE PROCEDURE sp_SetLoginToken
 (
 @UserId int,
 @Token NVARCHAR(250)
)
AS
BEGIN
 UPDATE Users
 SET 
  Token = @Token,
  LasLastLoginTime = GETDATE(),
  FailedLoginCount = 0
 WHERE Id = @UserId;
END