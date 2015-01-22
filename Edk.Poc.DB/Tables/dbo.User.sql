CREATE TABLE [dbo].[User]
(
	[id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[CompanyName] [nvarchar](256) NULL,
	[AltPhone] [nvarchar](256) NULL,
	[Phone] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[Username] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[PasswordSalt] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,

	PRIMARY KEY CLUSTERED ([id] ASC),
)