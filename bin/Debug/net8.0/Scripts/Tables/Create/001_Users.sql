
CREATE TABLE Users
(
 ID int PRIMARY KEY IDENTITY,
 FullName NVARCHAR(250) not null,
 Email NVARCHAR(50),
 PhoneNumber NVARCHAR (20),
 BirthDate DATE,
 RoleID int not null,

 Active bit DEFAULT (0),
 CreatedAt DATETIME2 DEFAULT GETDATE(),
 UpdatedAt DATETIME2 DEFAULT GETDATE(),
)