CREATE TABLE [dbo].[VehicleMake]
(
	ID INT IDENTITY(1,1),
	[make] nvarchar(50) NOT NULL,
	[isCommon] bit NOT NULL DEFAULT 0,
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE()
	PRIMARY KEY CLUSTERED ([ID] ASC)
)

	
		