--1 update age


--UPDATE patientinfo
--SET age = DATEDIFF(YY,birthdate,GETDATE())


--2 update  patientagegroup
UPDATE  patientinfo 
SET  patientagegroup  = CASE
		 WHEN age < 18 THEN 'Minar'
		ELSE 'Adult'
		END  
		 
