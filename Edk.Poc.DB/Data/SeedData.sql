﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

insert into ZipCode(Country, ZipCode5Digit, City, [STATE], StateAbbreviation, County, Latitude, Longitude)
values('US', '98001', 'Redmond', 'Washington', 'WA', 'King', 38.02830, -93.29420);

insert into VehicleYear([year]) values ('2015');
insert into VehicleYear([year]) values ('2014');
insert into VehicleYear([year]) values ('2013');
insert into VehicleYear([year]) values ('2012');
insert into VehicleYear([year]) values ('2011');
insert into VehicleYear([year]) values ('2010');
insert into VehicleYear([year]) values ('2009');
insert into VehicleYear([year]) values ('2008');
insert into VehicleYear([year]) values ('2007');

insert into VehicleMake(make, isCommon) values ('AUDI', 0);
insert into VehicleMake(make, isCommon) values ('BMW', 0);
insert into VehicleMake(make, isCommon) values ('BUICK', 0);
insert into VehicleMake(make, isCommon) values ('CADILLAC', 0);
insert into VehicleMake(make, isCommon) values ('CHEVROLET', 1);
insert into VehicleMake(make, isCommon) values ('CHEVROLET', 0);
insert into VehicleMake(make, isCommon) values ('CHRYSLER', 0);
insert into VehicleMake(make, isCommon) values ('DODGE', 1);
insert into VehicleMake(make, isCommon) values ('FIAT', 0);
insert into VehicleMake(make, isCommon) values ('TOYOTA', 1);
insert into VehicleMake(make, isCommon) values ('HONDA', 1);
insert into VehicleMake(make, isCommon) values ('NISSAN', 1);

DECLARE @YearID INT
select @YearID = Id from VehicleYear where [year] = '2015'

DECLARE @MakeID INT
select @MakeID = Id from VehicleMake where [make] = 'AUDI'

DECLARE @tModel TABLE (ModelID INT);

insert into VehicleModel([vehicleYearID],[vehicleMakeID], model) 
OUTPUT INSERTED.Id INTO @tModel
values (@YearID, @MakeID, 'A5 QUATTRO PRESTIGE');

DECLARE @modelId INT
SELECT @modelId = ModelID FROM @tModel;

insert into VehicleBodytype(vehicleModelID, [bodyType]) 
values (@modelId, 'CONVERTIBLE');


 