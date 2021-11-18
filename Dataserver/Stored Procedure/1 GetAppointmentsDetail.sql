use [Hospitalmanagment]
go
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[GetAppointmentsDetail]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[GetAppointmentsDetail]
end
use [Hospitalmanagment]
go

CREATE PROCEDURE GetAppointmentsDetail

AS
BEGIN
SET NOCOUNT ON
 
 select count(*) as 'appointment count',clinic.clinicname,Clinic.clinicid , year(apptdate) as 'year', month(apptdate) 'month' from appointmentinfo 
 inner join Clinic on clinic.clinicid=appointmentinfo.clinicid
 --where clinic.clinicid=@clinicid
 group by clinic.clinicid,clinic.clinicname,appointmentinfo.apptdate
 


						
 end