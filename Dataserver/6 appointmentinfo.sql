use [Hospitalmanagment]
go 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'appointmentinfo')
BEGIN
	CREATE TABLE appointmentinfo (
    
     
	
	
	patid INT FOREIGN KEY REFERENCES clinic(clinicid),
	apptid int primary key,
	apptdate date,
	operatory int,
	provider int,
	appttime time,
	apptlength float,
	amount float,
	clinicid int FOREIGN KEY REFERENCES clinic(clinicid)
);
    PRINT 'appointmentinfo table created'
END
else
BEGIN
	print 'appointmentinfo table is already exit'
END

--drop table appointmentinfo
SET DATEFORMAT DMY --more study require
BULK INSERT appointmentinfo
FROM 'F:\ibrain\HospitalManagment\Dataserver\Data\appointmentinfo.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

