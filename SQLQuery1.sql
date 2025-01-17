USE [ado_db]
GO
/****** Object:  StoredProcedure [dbo].[InsertStudentData]    Script Date: 8/3/2024 10:57:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertStudentData]
(
    @studentname NVARCHAR(100),
    @gender VARCHAR(10),
    @anumber INT,
    @class VARCHAR(50),
    @section VARCHAR(50),
    @fatherName VARCHAR(50),
    @mobileNumber INT,
    @emailAddress VARCHAR(50),
    @dob DATE
)
AS 
BEGIN
    INSERT INTO AdmissionForm (StudentName, Gender, AdmissionNumber, Class, Section, FatherName, MobileNumber, EmailAddress, DateOfBirth)
    VALUES (@studentname, @gender, @anumber, @class, @section, @fatherName, @mobileNumber, @emailAddress, @dob);
END;