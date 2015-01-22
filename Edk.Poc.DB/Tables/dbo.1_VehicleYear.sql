CREATE TABLE [dbo].[VehicleYear]
(
	ID INT IDENTITY(1,1),
	[year] nvarchar(50) NOT NULL,
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	PRIMARY KEY CLUSTERED ([Id] ASC)
)

	
		