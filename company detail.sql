create database company_detail

use company_detail
create table company(
company_id int primary key,
company_name varchar(20)
);

use company_detail
create table department(
department_id int primary key,
department_name varchar(20),
department_location varchar(30),
company_id int foreign key references company(company_id) on update cascade
);

use company_detail
create table employee(
ssn int primary key,
f_name varchar(20),
l_name varchar(20),
b_date int,
b_month varchar(3),
b_year int,
gender varchar(1),
join_month varchar(3),
Join_year int,
department_id int foreign key references department(department_id) on update cascade,
salary bigint
);

use company_detail
create table project(
project_id int primary key,
project_name varchar(20),
project_location varchar(30),
department_id int foreign key references department(department_id) on update cascade,
sup_ssn int foreign key references employee(ssn)
);

use company_detail
create table dependents(
ssn int primary key references employee(ssn) on update cascade,
dependent_name varchar(20),
dependent_gender varchar(1),
relation varchar(20),
);

use company_detail
create table work(
project_id int foreign key references project(project_id) on update cascade,
ssn int foreign key references employee(ssn),
work_hour int 
);

alter table department
add mngr_ssn int 

alter table department
add foreign key (mngr_ssn) references employee(ssn)

select * from company

select * from department

select * from employee

select * from project

select * from dependents
select * from project

select * from work

insert into company (company_id, company_name)
values(1,'IT Company');

insert into department (department_id, department_name, department_location, company_id)
values(101,'web development', 'a101', 1);

insert into department (department_id, department_name, department_location, company_id)
values(102,'app development', 'a102', 1);

insert into department (department_id, department_name, department_location, company_id)
values(103,'software development', 'a103', 1);

insert into department (department_id, department_name, department_location, company_id)
values(104,'digital marketing', 'a104', 1);

insert into department (department_id, department_name, department_location, company_id)
values(105,'testing', 'a105', 1);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1001, 'shubham', 'jajoo', 22, 'feb', 1956, 'm', 'jan', 2001, 101, 40000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1002, 'saumya', 'joshi', 24, 'mar', 1956, 'f', 'apr', 2001, 101, 40000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1003, 'rashi', 'jain', 24, 'jan', 1959, 'f', 'jan', 2006, 102, 46000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1004, 'ramphal', 'sharma', 18, 'dec', 1969, 'm', 'dec', 2005, 102, 76000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1005, 'shubham', 'charan', 25, 'aug', 1959, 'm', 'dec', 2006, 103, 36000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1006, 'shubham', 'somani', 12, 'jul', 1949, 'm', 'jan', 2003, 103, 49000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1007, 'vivek', 'songara', 9, 'jun', 1967, 'm', 'aug', 2005, 104, 79000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1008, 'sonam', 'yadav', 2, 'oct', 1969, 'f', 'nov', 2005, 105, 41000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1009, 'abhishek', 'sharma', 2, 'feb', 1966, 'm', 'oct', 2008, 104, 47000);

insert into employee(ssn, f_name, l_name, b_date, b_month, b_year, gender, join_month, Join_year, department_id, salary)
values(1010, 'harsha', 'kanwar', 5, 'feb', 1976, 'f', 'oct', 2009, 105, 54000);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(201, 'ecommerce', 'b101', 101, 1001);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(202, 'ecommerce', 'b101', 102, 1001);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(203, 'ecommerce', 'b101', 104, 1001);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(204, 'ecommerce', 'b101', 105, 1001);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(205, 'companysoftware', 'b102', 103, 1003);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(206, 'companysoftware', 'b102', 105, 1003);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(207, 'marketingproject', 'b103', 101, 1002);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(208, 'marketingproject', 'b103', 102, 1002);

insert into project(project_id, project_name, project_location, department_id, sup_ssn)
values(209, 'marketingproject', 'b103', 104, 1002);

insert into dependents values(1001, 'a. jajoo', 'm', 'father')

insert into dependents values(1002, 's.k. joshi', 'm', 'father')

insert into dependents values(1003, 's.k. jain', 'm', 'father')

insert into dependents values(1004, 'b.b. sharma', 'm', 'father')

insert into dependents values(1005, 'g. singh', 'm', 'father')

insert into dependents values(1006, 'g. somani', 'm', 'father')

insert into dependents values(1007, 'b.d. songara', 'm', 'father')

insert into dependents values(1008, 'd. singh', 'm', 'father')

insert into dependents values(1009, 'n. sharma', 'm', 'father')

insert into dependents values(1010, 'g.s. chouhan', 'm', 'father')

insert into work values(201, 1001, 8)

insert into work values(202, 1003, 8)

insert into work values(203, 1007, 8)

insert into work values(204, 1010, 8)

insert into work values(205, 1005, 8)

insert into work values(206, 1008, 8)

insert into work values(207, 1002, 8)

insert into work values(208, 1004, 8)

insert into work values(209, 1009, 8)


update department set mngr_ssn = 1001 where department_id = 101;

update department set mngr_ssn = 1003 where department_id = 102;

update department set mngr_ssn = 1005 where department_id = 103;

update department set mngr_ssn = 1007 where department_id = 104;

update department set mngr_ssn = 1008 where department_id = 105;

select * from employee where salary > 50000;

select ssn, f_name, l_name, salary, salary*12 as annual_salary from employee;

select ssn, f_name, l_name, join_month from employee where join_month = 'jan';

select ssn, f_name, l_name, join_month, join_year from employee where join_month = 'may' or join_month = 'dec' and join_year = 2005;

select ssn, f_name, l_name from employee where f_name like 's%';

select ssn, f_name, l_name from employee where len(f_name) = 5 and f_name like 'r%';

select ssn, f_name, salary from employee order by salary desc; 

select count(ssn) from employee;

select ssn, f_name, l_name, concat(f_name, ' ', l_name) as full_name from employee ;

select department_id, max(salary) as salary from employee where salary >= 50000 group by department_id  ;

select department_name, avg(salary) as avg_salary from department inner join employee on department.department_id = employee.department_id group by department_name;

select e.f_name, e.b_month, e.b_date,d.mngr_ssn, e.ssn from employee e inner join department d on e.department_id = d.department_id where e.b_month in (select e.b_month from employee e inner join department d on e.ssn = d.mngr_ssn)

select e.f_name, e.b_month, e.b_date, d.mngr_ssn, e.ssn from employee e, department d, employee r where e.ssn = d.mngr_ssn and d.mngr_ssn = r.ssn and e.b_month = r.b_month and e.b_date = r.b_date

select e.f_name from work w inner join employee e on e.ssn = w.ssn group by e.f_name having count(w.project_id) = (select count(distinct project_name) from project);

select f_name, l_name, ssn, b_month from department inner join employee on department.department_id = employee.department_id where department_name = 'web development';

select f_name, l_name, ssn, mngr_ssn from department inner join employee on department.department_id = employee.department_id where mngr_ssn = 1001 or mngr_ssn = 1003 or mngr_ssn = 1005 or mngr_ssn = 1007 or mngr_ssn = 1008;

select department_name, count(*) from department inner join employee on department.department_id = employee.department_id group by department_name ;

select d.department_name, count(*) as nemployee_no from employee e inner join department d on d.department_id = e.department_id group by d.department_name having count(*) > 4 ;

select d.department_id, d.department_name, d.mngr_ssn, e.f_name, e.salary, e.join_year from department d inner join employee e on d.mngr_ssn = e.ssn;

select f_name, dependent_name, relation from employee inner join dependents on employee.ssn = dependents.ssn;

create view department_avg_salary(department_name, avg_salary) as select department_name, avg(salary) as avg_salary from department inner join employee on department.department_id = employee.department_id group by department_name;
select * from department_avg_salary;

create procedure employee_dob_asmanager as begin select e.f_name, e.b_month, e.b_date, d.mngr_ssn, e.ssn from employee e, department d, employee r where e.ssn = d.mngr_ssn and d.mngr_ssn = r.ssn and e.b_month = r.b_month and e.b_date = r.b_date end
employee_dob_asmanager

create function department_employee_avgsalary() returns table as return select department_name, avg(salary) as avg_salary from department inner join employee on department.department_id = employee.department_id group by department_name;
select * from department_employee_avgsalary()

create view every_project_work(f_name) as select e.f_name from work w inner join employee e on e.ssn = w.ssn group by e.f_name having count(w.project_id) = (select count(distinct project_name) from project);
select * from every_project_work