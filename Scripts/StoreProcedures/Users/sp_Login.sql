CREATE PROCEDURE sp_Login
 @Email NVARCHAR(50),
 @PasswordHash NVARCHAR(MAX),
 @ReturnValue int OUTPUT

AS
BEGIN
 SET NOCOUNT ON;
 -- Declare local variables to avoid multiple queries
 DECLARE @LocalEmail NVARCHAR(50)
 DECLARE @LocalPassword NVARCHAR(MAX)
 DECLARE @LocalActive BIT
 --Gather data
 SELECT @LocalEmail = Email, @LocalPassword = PasswordHash, @LocalActive = Active
 FROM Users
 Where Email = @Email;

 Set @ReturnValue=
 CASE
  WHEN @LocalEmail Is NULL AND @LocalActive IS NULL 
  THEN 0
  WHEN @LocalPassword = @PasswordHash AND @LocalActive = 1 
  THEN 1
  WHEN @LocalPassword = @PasswordHash AND @LocalActive = 0 THEN 2
  WHEN @LocalPassword <>@PasswordHash THEN 4
 END

END