create database if not exists dbo;
USE dbo;
DROP TABLE IF EXISTS `dbo.Department`;
GRANT ALL PRIVILEGES ON dbo.* to root@localhost;
CREATE TABLE dbo.Department(
  DepartmentId int AUTO_INCREMENT,
  DepartmentName nvarchar(500),
  PRIMARY KEY (DepartmentId)
);
INSERT into dbo.Department (DepartmentName) VALUES ('IT');
INSERT into dbo.Department (DepartmentName) VALUES ('Support');
DROP TABLE IF EXISTS `Employee`;
create table dbo.Employee(
EmployeeId int AUTO_INCREMENT,
EmployeeName nvarchar(500),
Department nvarchar(500),
DateOfJoining datetime,
PhotoFileName nvarchar(500),
PRIMARY KEY(EmployeeId)
);
insert into dbo.Employee(EmployeeName,Department,DateOfJoining,PhotoFileName)
values                  ('Bob','IT','2021-06-21','anonymous.png');
select * from dbo.Employee;