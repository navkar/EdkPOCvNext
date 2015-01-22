CREATE TABLE [dbo].[FeatureRole]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[RoleId] UNIQUEIDENTIFIER NOT NULL,
	[FunctionId] UNIQUEIDENTIFIER NOT NULL,

	PRIMARY KEY CLUSTERED ([id] ASC),
	CONSTRAINT [FK_dbo.featureRole_dbo.role_id] FOREIGN KEY ([RoleId]) 
	REFERENCES [dbo].[Role] ([id]),
	CONSTRAINT [FK_dbo.featureRole_dbo.function_id] FOREIGN KEY ([FunctionId]) 
	REFERENCES [dbo].[Feature] ([id]),
)