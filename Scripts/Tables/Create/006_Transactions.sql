CREATE TABLE Transactions
(
 Id int PRIMARY KEY IDENTITY,
 Amount DECIMAL,
 Type NVARCHAR(100),
 Note NVARCHAR(500),
 TransDate DATE,

 UserId int NOT NULL,
 WalletId int NOT NULL,
 CategoryId int NOT NULL,

 Active bit DEFAULT (0),
 CreatedAt DATETIME2 DEFAULT GETDATE(),
 UpdatedAt DATETIME2 DEFAULT GETDATE(),

 CONSTRAINT PK_Transaction_User FOREIGN KEY (UserId) REFERENCES Users(Id),
 CONSTRAINT PK_Wallet_User FOREIGN KEY (WalletId) REFERENCES Wallets(Id),
 CONSTRAINT PK_Categorie_User FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
)