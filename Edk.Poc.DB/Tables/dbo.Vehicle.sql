CREATE TABLE [dbo].[Vehicle]
(
	[ID] [uniqueidentifier] NOT NULL,
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[VIN] [nvarchar](255) NULL,
	[Make] [nvarchar](255) NULL,
	[Year] [int] NULL,
	[Model] [nvarchar](255) NULL,
	[BodyStyle] [nvarchar](255) NULL,
	[Trim] [nvarchar](255) NULL,
	[EngineType] [nvarchar](255) NULL,
	[TransmissionType] [nvarchar](255) NULL,
	[DriveSystem] [nvarchar](255) NULL,
	[FuelType] [nvarchar](255) NULL,
	[WheelSize] [nvarchar](255) NULL,
	[Story] [nvarchar](max) NULL,
	[VINFound] [bit] NULL,
	[TransmissionSpeed] [nvarchar](255) NULL,
	[Mileage] [int] NULL,
	[ExteriorColorID] [uniqueidentifier] NULL,
	[ListingID] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED ([id] ASC),
	--CONSTRAINT [FK_dbo.edk_car_dbo.edk_driver_id] FOREIGN KEY ([mostFrequentDriver]) 
	--REFERENCES [dbo].[edk_driver] ([id])
)