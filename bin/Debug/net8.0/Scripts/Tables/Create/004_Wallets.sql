CREATE TABLE Wallets
(
 Id int PRIMARY KEY IDENTITY,
 Name NVARCHAR(250) NOT NULL,
 Balance DECIMAL,
 Type NVARCHAR(100),
 UserId int NOT NULL,

 Active bit DEFAULT (0),
 CreatedAt DATETIME2 DEFAULT GETDATE(),
 UpdatedAt DATETIME2 DEFAULT GETDATE(),

 CONSTRAINT PK_Wallets_Users FOREIGN KEY (UserId) REFERENCES Users(Id),
)