CREATE TABLE [dbo].[VehicleBodytype]
(
	ID INT IDENTITY(1,1),
	[vehicleModelID] INT, 
	[bodyType] nvarchar(100) NOT NULL,
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE()
	PRIMARY KEY CLUSTERED ([ID] ASC),
	CONSTRAINT [FK_dbo.VehicleBodytype.vehicleModel] FOREIGN KEY ([vehicleModelID]) 
	REFERENCES [dbo].[VehicleModel] ([id])
)

	
		