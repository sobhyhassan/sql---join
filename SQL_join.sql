create table EmployeeDemographics(em_id int,em_name varchar(50),em_lname varchar(50),em_age int,em_gender varchar(50))
insert into EmployeeDemographics values
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')
select*from EmployeeDemographics

create table EmployeeSalary (em_id int,job_tit varchar(50),salary int)
insert into EmployeeSalary values
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)
select*from EmployeeSalary

--------------------------------------------------------------------------------------
create table Employee_Salary (em_id int,job_tit varchar(50),salary int)
insert into Employee_Salary values
(1001, 'Salesman', 45000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)
-- inner join 
select * from sql_sob.dbo.EmployeeDemographics
inner join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id
-- outer join
select * from sql_sob.dbo.EmployeeDemographics
full outer join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id

-- left join
select * from sql_sob.dbo.EmployeeDemographics
left join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id
select EmployeeDemographics.em_id , EmployeeDemographics.em_name , Employee_Salary.job_tit ,
 Employee_Salary.salary from sql_sob.dbo.EmployeeDemographics
left outer join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id

-- right join
select * from sql_sob.dbo.EmployeeDemographics
right join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id
select EmployeeDemographics.em_id , EmployeeDemographics.em_name , Employee_Salary.job_tit ,
 Employee_Salary.salary from sql_sob.dbo.EmployeeDemographics
right outer join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id

-- select a specific columns 
select EmployeeDemographics.em_id , EmployeeDemographics.em_name , Employee_Salary.job_tit ,
 Employee_Salary.salary from sql_sob.dbo.EmployeeDemographics
right outer join sql_sob.dbo.Employee_Salary on EmployeeDemographics.em_id = Employee_Salary.em_id