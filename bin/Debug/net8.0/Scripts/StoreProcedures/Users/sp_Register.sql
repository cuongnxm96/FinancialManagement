CREATE PROCEDURE sp_Register
  @FullName NVARCHAR(250),
  @Email NVARCHAR(50),
  @PhoneNumber NVARCHAR (20),
  @BirthDate DATE,
  @RoleID int not null,
  @PasswordHash NVARCHAR(MAX)

AS
BEGIN
  SET NOCOUNT ON
  SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

  IF EXISTS (SELECT 1
  From Users
  where Email = @Email)
  BEGIN
    RAISERROR ('Email had exists.',16,1);
    RETURN;
  END

  INSERT INTO Users
    (FullName, Email,PhoneNumber,BirthDate,RoleID,PasswordHash )
  VALUES
    (@FullName, @Email, @PhoneNumber, @BirthDate, @RoleID, @PasswordHash);
END