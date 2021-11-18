use [Hospitalmanagment]
go 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'patientinfo')
BEGIN
	CREATE TABLE patientinfo (
    
     
	PatID INT  PRIMARY KEY,
	practiceid INT ,
	lastname VARCHAR(100),
	firstname VARCHAR(100) ,
	city VARCHAR(100),
	state VARCHAR(100),
	gender VARCHAR(10),
	patientagegroup varchar(15),
	birthdate datetime ,
	age int
);
    PRINT 'patientinfo table created'
END
else
BEGIN
	print 'patientinfo table is already exit'
END

--drop table patientinfo
SET DATEFORMAT DMY --more study require
BULK INSERT patientinfo
FROM 'F:\ibrain\HospitalManagment\Dataserver\Data\patientinfo.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

