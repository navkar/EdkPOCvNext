CREATE TABLE [dbo].[Role]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC),
)