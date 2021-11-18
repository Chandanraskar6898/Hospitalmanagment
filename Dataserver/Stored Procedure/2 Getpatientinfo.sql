use [Hospitalmanagment]
go
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[Getpatientinfo]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[Getpatientinfo]
end
use [Hospitalmanagment]
go

CREATE PROCEDURE Getpatientinfo

AS
BEGIN
SET NOCOUNT ON
 
 select  patientinfo.patid,patientinfo.lastname,patientinfo.firstname from patientinfo
where PatID not in(

SELECT patid
FROM appointmentinfo 
GROUP BY patid
having  max(apptdate)>getdate())

						
 end