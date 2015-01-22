--DROP PROCEDURE [dbo].[VehicleData_Upsert]
--GO
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

-- =============================================
-- Author:		Naveen Karamchetti
-- Create date: 2015-1-10
-- Description:	Insert/Update Vehicle Data
-- =============================================
CREATE PROCEDURE [dbo].[VehicleData_Upsert]
(
	@Year VARCHAR(50),
	@Make VARCHAR(50),
	@Model VARCHAR(50),
	@BodyType VARCHAR(50)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @tModel TABLE (ModelID INT);
	DECLARE @modelId INT;

	DECLARE @YearID INT;
	select @YearID = Id from VehicleYear where [year] = @Year;

	DECLARE @MakeID INT;
	select @MakeID = Id from VehicleMake where [make] = @Make;

	IF	@YearID IS NOT NULL 
	AND 
		@MakeID IS NOT NULL
	BEGIN
		-- NOTE: Check for data in the Model and body before inserting.
		insert into VehicleModel([vehicleYearID],[vehicleMakeID], model) 
		OUTPUT INSERTED.Id INTO @tModel
		values (@YearID, @MakeID, @Model);
				
		SELECT @modelId = ModelID FROM @tModel;

		insert into VehicleBodytype(vehicleModelID, [bodyType]) 
		values (@modelId, @BodyType);
	END 
	ELSE
	BEGIN
		DECLARE @tYear TABLE (YearID INT);	
		insert into VehicleYear([year])
		OUTPUT INSERTED.Id INTO @tYear
		values (@Year);
			   
		DECLARE @tMake TABLE (MakeID INT);
		insert into VehicleMake(make, isCommon) 
		OUTPUT INSERTED.Id INTO @tMake
		values (@Make, 0);

		insert into VehicleModel([vehicleYearID],[vehicleMakeID], model) 
		OUTPUT INSERTED.Id INTO @tModel
		values (@YearID, @MakeID, @Model);

		SELECT @modelId = ModelID FROM @tModel;

		insert into VehicleBodytype(vehicleModelID, [bodyType]) 
		values (@modelId, @BodyType);
	END
   
END