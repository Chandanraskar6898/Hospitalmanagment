use [Hospitalmanagment]
go 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'clinic')
BEGIN
	CREATE TABLE Clinic (
    clinicid INT IDENTITY(1,1) PRIMARY KEY,
     clinicname VARCHAR(200) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL
);
    PRINT 'clinic table created'
END
else
BEGIN
	print 'clinic table is already exit'
END
If Not EXISTS (SELECT 1 FROM clinic WHERE Clinic.clinicname='***noitaroproc latn akkis***')
    BEGIN
		INSERT INTO clinic (clinicname,city,state)
		VALUES ('***noitaroproc latn akkis***', '***esoj nas***','***ac***' );
		print 'Data for clinic ***noitaroproc latn akkis*** inserted'
    END 

ELSE 
     BEGIN
       print 'Data for clinic ***noitaroproc latn akkis*** exist'
     END
select *from Clinic
If Not EXISTS (SELECT 1 FROM clinic WHERE Clinic.clinicname='***ntryohroproc latn atudgsfs***')
    BEGIN
		INSERT INTO clinic (clinicname,city,state)
		VALUES ('***ntryohroproc latn atudgsfs***', '***esoj nas***','***ac***' );
		print 'Data for clinic ***ntryohroproc latn atudgsfs*** inserted'
    END 

ELSE 
     BEGIN
       print 'Data for clinic ***ntryohroproc latn atudgsfs*** exist'
     END
