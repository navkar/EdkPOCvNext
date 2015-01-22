CREATE TABLE [dbo].[VehicleInfo]
(
	[id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[vehicleId] UNIQUEIDENTIFIER NOT NULL, 
	[mostFrequentDriverName] nvarchar(50) NULL,
--	[mostFrequentDriver] UNIQUEIDENTIFIER NOT NULL,	-- FKEY
	[milesDrivenAnnually] nvarchar(10) NOT NULL,	
	[currentCarrier] nvarchar(20) NULL,
	[currentCarrierRenewalDate] datetime2 NULL DEFAULT GETDATE(),
	[liabilityStateCode] nvarchar(20) NULL,
	[liabilityBodilyInjury] nvarchar(20) NULL,
	[liabilityPropertyDamage] nvarchar(20) NULL,
	[liabilityUninsuredMotorist] nvarchar(20) NULL,
	[liabilityMedical] nvarchar(20) NULL,
	[carRentalPerDay] nvarchar(20) NULL,
	[deductibleComprehensive] nvarchar(20) NULL,
	[deductibleCollusion] nvarchar(20) NULL,
	[roadServiceTow] bit null DEFAULT 0,
	[additionalComments] ntext NULL DEFAULT 'no comments',
	[isActive] bit null DEFAULT 1,
	[version] ROWVERSION NOT NULL,
	PRIMARY KEY CLUSTERED ([id] ASC),
	CONSTRAINT [FK_dbo.vehicleInfo.vehicleId] FOREIGN KEY ([vehicleId]) 
	REFERENCES [dbo].[Vehicle] ([id])
)