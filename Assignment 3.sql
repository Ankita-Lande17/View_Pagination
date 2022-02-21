-- ================================================
USE EMP
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetEmployeeDetail] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Emp.EmployeeId, Emp.FirstName, Emp.City, Emp.State, Emp.DOB,
	       EmpD.Salary, EmpD.Age,
		   ComD.Joining_Date, ComD.CompanyName from
		   Employee Emp inner join  EmployeeDetail EmpD on Emp.EmployeeId=EmpD.EmployeeId
		   inner join CompanyDetail ComD on Emp.EmployeeId=ComD.EmployeeId
END
GO

