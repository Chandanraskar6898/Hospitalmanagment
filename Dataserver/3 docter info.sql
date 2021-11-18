use [Hospitalmanagment]
go 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Docterinfo')

BEGIN
CREATE TABLE Docterinfo (
IDNo INT IDENTITY(1,1) PRIMARY KEY,
lastname VARCHAR(100) NOT NULL,
firstname VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL,
state VARCHAR(100) NOT NULL,
clinicid INT FOREIGN KEY REFERENCES clinic(clinicid)
);
PRINT 'docter info is created'
END
else
BEGIN
	print 'docter info is already exit'
END

truncate table Docterinfo
BULK INSERT Docterinfo
FROM 'F:\ibrain\HospitalManagment\Dataserver\Data\doctorinfo.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

---table insert start
/*
If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***iloposab***' AND docterinfo.firstname='***aztiram***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***iloposab***', '***aztiram***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***iloposab*** and ***aztiram***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***iloposab*** and ***aztiram*** exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***ivel***' AND docterinfo.firstname='***elleinad***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***ivel***', '***elleinad***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***iloposab*** and ***aztiram***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***ivel*** and ***elleinad***  exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***hahs***' AND docterinfo.firstname='***inahus***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***hahs***', '***inahus***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***hahs***  and ***inahus*** '
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***hahs*** and ***inahus***  exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***ahttahc***' AND docterinfo.firstname='***teerpnom***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***ahttahc***', '***teerpnom***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***ahttahc***  and ***teerpnom***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***ahttahc*** and ***teerpnom***  exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***ahttahc***' AND docterinfo.firstname='***teerpnom***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***ahttahc***', '***teerpnom***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***ahttahc***  and ***teerpnom***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***ahttahc*** and ***teerpnom***  exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***ahttahc***' AND docterinfo.firstname='***teerpnom***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***ahttahc***', '***teerpnom***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***ahttahc***  and ***teerpnom***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***ahttahc*** and ***teerpnom***  exist'
     END

	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***naod***' AND docterinfo.firstname='***yvi***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***naod***', '***yvi***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***naod***  and ***yvi***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***naod*** and ***yvi***exist'
     END

	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***nosnikcid***' AND docterinfo.firstname='***aicirtap***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***nosnikcid***', '***aicirtap***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***nosnikcid***and ***aicirtap***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***nosnikcid***and***aicirtap***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***evitcani***' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***evitcani***', '******','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***evitcani*** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***evitcani***and ******exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***akkis***' AND docterinfo.firstname='***.rd***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***akkis***', '***.rd***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***akkis*** and ***.rd***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***akkis***and ***.rd***exist'
     END

	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***hcneb***' AND docterinfo.firstname='***divad***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***hcneb***', '***divad***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***hcneb*** and ***divad***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***hcneb***and ***divad***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='******' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('******', '******','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ****** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ******and ******exist'
     END

	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***akkis***' AND docterinfo.firstname='***ihdin***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***akkis***', '***ihdin***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***akkis*** and ***ihdin***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***akkis***and ***ihdin***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***zenemij***' AND docterinfo.firstname='***ysiad***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***zenemij***', '***ysiad***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***zenemij*** and ***ysiad***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***zenemij***and ***ysiad***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***lagirdam***' AND docterinfo.firstname='***nimzaj***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***lagirdam***', '***nimzaj***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***lagirdam*** and ***nimzaj***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***lagirdam***and ***nimzaj***exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***deys magleb***' AND docterinfo.firstname='***aizahs***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***deys magleb***', '***aizahs***','***esoj nas***','***ac***',1 );
		print 'Data for docterinfo ***deys magleb*** and ***aizahs***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***deys magleb***and ***aizahs***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***godiba***' AND docterinfo.firstname='***akilegna***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***godiba***', '***akilegna***','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***godiba*** and ***akilegna***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***godiba***and ***akilegna***exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***asagar***' AND docterinfo.firstname='***enitsuj***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***asagar***', '***enitsuj***','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***asagar*** and ***enitsuj***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***asagar***and ***enitsuj***exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***airravahc***' AND docterinfo.firstname='***enaid***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***airravahc***', '***enaid***','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***airravahc*** and ***enaid***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***airravahc***and ***enaid***exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***zenitram***' AND docterinfo.firstname='***ainos***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***zenitram***', '***ainos***','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***zenitram*** and ***ainos***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***zenitram***and ***ainos***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***azne***' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***azne***', '******','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***azne*** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***azne***and ******exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***ys***' AND docterinfo.firstname='***llyrehc***' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***ys***', '***llyrehc***','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***ys*** and ***llyrehc***'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***ys***and ***llyrehc***exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='***aim***' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('***aim***', '******','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ***aim*** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ***aim***and ******exist'
     END


	  If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='******' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('******', '******','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ****** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ******and ******exist'
     END


	 If Not EXISTS (SELECT 1 FROM Docterinfo WHERE docterinfo.lastname='******' AND docterinfo.firstname='******' )
    BEGIN
		INSERT INTO docterinfo (lastname,firstname,city,state,clinicid)
		VALUES ('******', '******','***esoj nas***','***ac***',2 );
		print 'Data for docterinfo ****** and ******'
    END 

ELSE 
     BEGIN
       print 'Data for docterinfo ******and ******exist'
     END*/