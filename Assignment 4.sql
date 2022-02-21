  USE EMP
  SELECT FirstName,LastName,DOB,EmployeeId FROM Employee
  ORDER BY EmployeeId
  OFFSET 3 ROWS
  
  SELECT EmployeeId,Salary,Age FROM EmployeeDetail
  ORDER BY EmployeeId
  OFFSET 4 ROWS FETCH NEXT 5 ROWS ONLY

DECLARE @PageNumber AS INT
DECLARE @RowsOfPage AS INT
SET @PageNumber=1
SET @RowsOfPage=4
SELECT FirstName,EmployeeId FROM Employee
ORDER BY EmployeeId 
OFFSET (@PageNumber-1)*@RowsOfPage ROWS
FETCH NEXT @RowsOfPage ROWS ONLY

SELECT * FROM Employee

CREATE PROCEDURE USPPAGINING
@istartRowIndex INT,                                          
@imaximumRows INT                          
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM                            
  (                          
   SELECT ROW_NUMBER() OVER (ORDER BY FirstName)-1 AS Row,* FROM Employee                        
  )Employee                          
WHERE (Row between (@istartRowIndex) AND @istartRowIndex + (@imaximumRows -1))    
END
GO
EXEC USPPAGINING @istartRowIndex=1, @imaximumRows=6
