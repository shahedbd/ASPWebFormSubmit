USE [DevTemp]
GO
/****** Object:  StoredProcedure [dbo].[sp_personalinfo]    Script Date: 10/23/2017 3:23:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_personalinfo] (@ID bigint = NULL,
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
    INSERT INTO personalinfo (ID,
    FirstName,
    LastName,
    DateOfBirth,
    City,
    Country,
    MobileNo,
    NID,
    Email,
    Status)
      VALUES (@ID, @FirstName, @LastName, @DateOfBirth, @City, @Country, @MobileNo, @NID, @Email, @Status)
    IF @@ROWCOUNT = 0
    BEGIN
      SET @Msg = 'Warning: No rows were Inserted';
    END
    ELSE
    BEGIN
      SET @Msg = 'Data Saved Successfully';
    END
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
        Status = @Status WHERE ID = @ID;

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
    DELETE FROM personalinfo WHERE ID = @ID;
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
    SELECT * FROM personalinfo WHERE ID = @ID;
    IF (@@ROWCOUNT = 0)
      SET @Msg = 'Data Not Found';
  END
--End of Select personalinfo By ID 


