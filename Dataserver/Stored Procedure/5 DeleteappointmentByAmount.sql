use [Hospitalmanagment]
go
IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[[DeleteappointmentByAmount]]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[DeleteappointmentByAmount]
end
use [Hospitalmanagment]
go

CREATE PROCEDURE DeleteappointmentByAmount
@amount float(50)

AS
BEGIN
SET NOCOUNT ON

delete from appointmentinfo
where amount=@amount
 

end