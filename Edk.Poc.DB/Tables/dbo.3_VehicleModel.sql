CREATE TABLE [dbo].[VehicleModel]
(
	ID INT IDENTITY(1,1),
	[vehicleYearID] INT,
	[vehicleMakeID] INT, 
	[model] nvarchar(50) NOT NULL,
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE()
	PRIMARY KEY CLUSTERED ([ID] ASC),
	CONSTRAINT [FK_dbo.VehicleModel.vehicleYear] FOREIGN KEY ([vehicleYearID]) 
	REFERENCES [dbo].[VehicleYear] ([id]),
	CONSTRAINT [FK_dbo.VehicleModel.vehicleMake] FOREIGN KEY ([vehicleMakeID]) 
	REFERENCES [dbo].[VehicleMake] ([id])
)

	
		