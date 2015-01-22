CREATE TABLE [dbo].[UserRole]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[RoleId] UNIQUEIDENTIFIER NOT NULL,

	PRIMARY KEY CLUSTERED ([id] ASC),
	CONSTRAINT [FK_dbo.userRole_dbo.role_id] FOREIGN KEY ([RoleId]) 
	REFERENCES [dbo].[Role] ([id]),
	CONSTRAINT [FK_dbo.userRole_dbo.user_id] FOREIGN KEY ([UserId]) 
	REFERENCES [dbo].[Feature] ([id]),
)