CREATE TABLE [dbo].[ZipCode]
(
	[Id] [uniqueidentifier] NOT NULL DEFAULT NEWID(),
	[CreatedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[ModifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[Country] [varchar](2) NULL,
	[ZipCode5Digit] [varchar](5) NOT NULL,
	[City] [varchar](200) NULL,
	[STATE] [varchar](50) NULL,
	[StateAbbreviation] [varchar](2) NULL,
	[County] [varchar](50) NULL,
	[Latitude] [decimal](8, 5) NOT NULL,
	[Longitude] [decimal](8, 5) NOT NULL,
	[GeoLocation] [geography] NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
)