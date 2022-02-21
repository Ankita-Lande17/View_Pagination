USE EMP
SELECT EmployeeId FROM Employee
UNION 
SELECT EmployeeId FROM EmployeeDetail


SELECT  EmployeeId FROM Employee
UNION ALL
SELECT EmployeeId FROM EmployeeDetail
ORDER BY EmployeeId