use [Hospitalmanagment]
go
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[GetCollectionAmount]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[GetCollectionAmount]
end
use [Hospitalmanagment]
go

CREATE PROCEDURE GetCollectionAmount

AS
BEGIN
SET NOCOUNT ON
 
 
select proceduretype, clinic.clinicname,appointmentinfo.provider,year(proceduredate) as'year',month(proceduredate) as'month',
sum (appointmentinfo.amount) as 'Amount' from transactioninfo
inner join appointmentinfo on transactioninfo.clinicid=appointmentinfo.clinicid and appointmentinfo.patid=transactioninfo.patid
inner join Clinic on clinic.clinicid=appointmentinfo.clinicid 
group by proceduretype,year(proceduredate),month(proceduredate),appointmentinfo.provider, clinic.clinicname;

						
 end