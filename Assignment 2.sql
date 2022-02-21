USE EMP
Create table CompanyDetail
(
  EmployeeId int NOT NULL,
  CompanyId int NOT NULL PRIMARY KEY,
  CompanyName varchar(20) NOT NULL,
  Joining_Date date NOT NULL,
  FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)
 );

 Insert into CompanyDetail Values (1,12,'Netsolutions','1995-10-12');

 Select * from CompanyDetail;

 Create View [Company_Employee_Detail] AS
 SELECT Employee.EmployeeId,Employee.FirstName,EmployeeDetail.Salary,EmployeeDetail.Email,CompanyDetail.Joining_Date,CompanyDetail.CompanyName
 FROM Employee
 INNER JOIN EmployeeDetail ON Employee.EmployeeId =EmployeeDetail.EmployeeId
 Inner Join CompanyDetail ON Employee.EmployeeId =CompanyDetail.EmployeeId

 Select * from [Company_Employee_Detail]

 Create View [View_Left_Join] AS
 SELECT Employee.EmployeeId,Employee.FirstName,EmployeeDetail.Salary,EmployeeDetail.Email,CompanyDetail.Joining_Date,CompanyDetail.CompanyName
 FROM Employee
 Left JOIN EmployeeDetail ON Employee.EmployeeId =EmployeeDetail.EmployeeId
 Left Join CompanyDetail ON Employee.EmployeeId =CompanyDetail.EmployeeId

 select * from [View_Left_Join]

 Create View [View_Right_Join] AS
 SELECT Employee.EmployeeId,Employee.FirstName,Employee.DOB,EmployeeDetail.Salary,EmployeeDetail.Email,
 EmployeeDetail.Age,CompanyDetail.Joining_Date,
 CompanyDetail.CompanyName,CompanyDetail.CompanyId
 FROM Employee
 RIGHT JOIN EmployeeDetail ON Employee.EmployeeId =EmployeeDetail.EmployeeId
 RIGHT Join CompanyDetail ON Employee.EmployeeId =CompanyDetail.EmployeeId

 select * from [View_Right_Join]