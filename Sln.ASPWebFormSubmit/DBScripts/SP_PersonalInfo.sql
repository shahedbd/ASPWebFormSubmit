USE [DevTemp]
GO
/****** Object:  StoredProcedure [dbo].[sp_personalinfo]    Script Date: 10/23/2017 1:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[sp_personalinfo] (
@PersonalInfoID bigint = NULL,
@FirstName nchar(100) = NULL,
@LastName nchar(100) = NULL,
@DateOfBirth datetime = NULL,
@City nchar(50) = NULL,
@Country nchar(100) = NULL,
@MobileNo nchar(50) = NULL,
@NID nchar(100) = NULL,
@Email nchar(100) = NULL,
@Status tinyint = NULL,

@Msg nvarchar(max) = NULL OUT,
@pOptions int)
AS
  --Save personalinfo
  IF (@pOptions = 1)
  BEGIN

	IF @PersonalInfoID IS NOT NULL
	BEGIN
		DELETE FROM dbo.personalinfo WHERE PersonalInfoID=@PersonalInfoID	
	END

	IF @FirstName IS NOT NULL
    BEGIN
		INSERT INTO dbo.personalinfo (FirstName,LastName,DateOfBirth,City,Country,MobileNo,NID,Email,Status)
		VALUES (@FirstName, @LastName, @DateOfBirth, @City, @Country, @MobileNo, @NID, @Email, 1)   
		IF @@ROWCOUNT = 0
		BEGIN
		  SET @Msg = 'Warning: No rows were Inserted';
		END
		ELSE
		BEGIN
		  SET @Msg = 'Data Saved Successfully';
		END
	END

	SELECT * FROM dbo.personalinfo 
  END
  --End of Save personalinfo


  --Update personalinfo 
  IF (@pOptions = 2)
  BEGIN
    UPDATE personalinfo
    SET FirstName = @FirstName,
        LastName = @LastName,
        DateOfBirth = @DateOfBirth,
        City = @City,
        Country = @Country,
        MobileNo = @MobileNo,
        NID = @NID,
        Email = @Email,
        Status = @Status WHERE PersonalInfoID = @PersonalInfoID;

    IF @@ROWCOUNT = 0
    BEGIN
      SET @Msg = 'Warning: No rows were Updated';
    END
    ELSE
    BEGIN
      SET @Msg = 'Data Updated Successfully';
    END
  END
  --End of Update personalinfo 



  --Delete personalinfo
  IF (@pOptions = 3)
  BEGIN
    DELETE FROM personalinfo WHERE PersonalInfoID = @PersonalInfoID;
    SET @Msg = 'Data Deleted Successfully';
  END
  --End of Delete personalinfo 


  --Select All personalinfo 
  IF (@pOptions = 4)
  BEGIN
    SELECT * FROM personalinfo;
    IF (@@ROWCOUNT = 0)
      SET @Msg = 'Data Not Found';
  END
  --End of Select All personalinfo 


  --Select personalinfo By ID 
  IF (@pOptions = 5)
  BEGIN
    SELECT * FROM personalinfo WHERE PersonalInfoID = @PersonalInfoID;
    IF (@@ROWCOUNT = 0)
      SET @Msg = 'Data Not Found';
  END
--End of Select personalinfo By ID 



