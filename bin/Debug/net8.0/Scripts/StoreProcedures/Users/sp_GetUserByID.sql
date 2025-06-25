CREATE PROCEDURE sp_GetUserById
 @UserId int

AS
BEGIN
 SET NOCOUNT ON
 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

 SELECT
  ID,
  FullName ,
  Email ,
  PhoneNumber ,
  BirthDate ,
  RoleID ,
  PasswordHash ,
  Active ,
  CreatedAt ,
  UpdatedAt

 FROM Users
 WHERE ID = @UserId
END
