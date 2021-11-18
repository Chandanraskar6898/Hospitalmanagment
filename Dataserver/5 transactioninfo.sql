use [Hospitalmanagment]
go 

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'transactioninfo')
BEGIN
    
	CREATE TABLE transactioninfo ( 
     
	transid INT  PRIMARY KEY,	
	patid INT FOREIGN KEY REFERENCES clinic(clinicid),
	proceduretype VARCHAR(100),
	proceduredate date,
	prov int,
	amount float,
	clinicid INT FOREIGN KEY REFERENCES clinic(clinicid)	
);

    PRINT 'transactioninfo table created'
END
else
BEGIN
	print 'transactioninfo table is already exit'
END
SET DATEFORMAT DMY --more study require
BULK INSERT transactioninfo
FROM 'F:\ibrain\HospitalManagment\Dataserver\Data\transactioninfo.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

--drop table transactioninfo 

select * from transactioninfo