CREATE TABLE [dbo].[Driver]
(
	[id] UNIQUEIDENTIFIER DEFAULT NEWID(),
	[createdDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[modifiedDate] datetime2 NOT NULL DEFAULT GETDATE(),
	[driverfirstName] nvarchar(50) NOT NULL, 
	[driverMiddleInitial] nvarchar(3) NOT NULL, 
	[driverlastName] nvarchar(50) NOT NULL, 
	[driverDOB] datetime2 NOT NULL DEFAULT GETDATE(),
	[yearFirstLicensed] nvarchar(4),

	[noOfTrafficTickets] smallint NOT NULL DEFAULT 0,
	[noOfAtFaultAccidents] smallint NOT NULL DEFAULT 0, 
	[isDUI] bit null DEFAULT 0,
	[occupation] nvarchar(50) NOT NULL, 
	[oneWayDistanceFromHomeToWork] int,

	[noFaultAccidents] smallint,
	[isGraduateOfFourYearCollegeInUS] bit null DEFAULT 0,
	[isCGPA3] bit null DEFAULT 0,

	[additionalComments] ntext NULL DEFAULT 'no comments',
	[isActive] bit null DEFAULT 1,
	[version] ROWVERSION NOT NULL,
	PRIMARY KEY CLUSTERED ([id] ASC)
)