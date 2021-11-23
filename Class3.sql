use syntaxhrm_mysql;

select * from hs_hr_employees where emp_lastname ='Smith' and emp_firstname = 'John';

select * from hs_hr_employees where emp_lastname ='Smith' or emp_firstname = 'John';

select * from hs_hr_employees where not emp_lastname ='Smith';

select * from hs_hr_employees where emp_lastname in ('Smith', 'Medvedev', 'Test');

select * from hs_hr_employees where emp_birthday between '1980-01-01' and '2000-12-31';

select * from hs_hr_employees where emp_birthday like '1980%';

select * from hs_hr_employees where emp_birthday like '%-01';

-- functions in sql
 -- 1. single row functions
 -- 2. multiple row functions 
 
select upper(emp_firstname) from hs_hr_employees order by 1;
 
select lower(emp_firstname) from hs_hr_employees order by 1;

select emp_firstname, length(emp_firstname) from hs_hr_employees;

select concat(emp_firstname, emp_lastname) from hs_hr_employees;

select length(emp_lastname) from hs_hr_employees;

select lower(emp_firstname) from hs_hr_employees where emp_firstname like 'a%';

-- MULTIPLE ROW FUNCTIONS ---
 -- COUNT, MIN, MAX, AVG, SUM
 
select * from hs_hr_employees;

select count(emp_firstname) from hs_hr_employees;

select count(*) from hs_hr_employees;

select * from hs_hr_emp_basicsalary;

select max(ebsal_basic_salary) from hs_hr_emp_basicsalary;

select min(ebsal_basic_salary) from hs_hr_emp_basicsalary;

select avg(ebsal_basic_salary) from hs_hr_emp_basicsalary;

select avg(ebsal_basic_salary) from hs_hr_emp_basicsalary;

select * from person;

select max(age) from person;

select min(age) from person;

select firstname, count(firstname) from person;

select count(*) from person;

select * from hs_hr_employees where emp_zipcode is not null;

select * from person;

select count(*), city from person group by city;

select count(*), age from person group by age;

select * from hs_hr_employees;

select count(*), emp_gender from hs_hr_employees group by emp_gender;

select count(*), emp_marital_status from hs_hr_employees group by emp_marital_status;

-- find count of employees who are single or married

select count(*), emp_marital_status 
from hs_hr_employees 
where emp_marital_status in ('married', 'single') 
group by emp_marital_status;

select * from hs_hr_employees
where emp_marital_status is not null;

select count(*), job_title_code from hs_hr_employees where job_title_code between 1 and 10 group by job_title_code;

select * from ohrm_job_title;

-- Display last name in uppercase, first name in lowercase.
select upper(emp_lastname), lower(emp_firstname) from hs_hr_employees;

-- Verify how many employees don’t have any title assigned?
select count(*), job_title_code from hs_hr_employees where job_title_code is null;

-- Verify how many employees are married
select count(*), emp_marital_status from hs_hr_employees where emp_marital_status ='Married';

-- Display youngest employee in the company
select max(emp_birthday) from hs_hr_employees;

-- Verify how many Developers we have?
select count(*), job_title_code from hs_hr_employees where job_title_code ='10';

-- How many employees first name starts with A? 
select count(*) from hs_hr_employees where emp_firstname like 'A%';

-- Verify how many Database administrators, Application Developers, Production Manager
select count(*), job_title_code from hs_hr_employees where job_title_code in (8,4,1,10,22) group by job_title_code order by 1;

select * from hs_hr_employees where job_title_code is not null;

select count(*), job_title_code from hs_hr_employees where job_title_code in (8,4,1,10,22) group by job_title_code having count(*) >50;

select min(emp_birthday) from hs_hr_employees;

select min(emp_birthday), job_title_code from hs_hr_employees group by job_title_code;

select min(emp_birthday), job_title_code from hs_hr_employees where emp_birthday like '20%' group by job_title_code;

select emp_firstname, emp_lastname, job_title_code from hs_hr_employees where job_title_code = 8;

select * from ohrm_job_title;

select id from ohrm_job_title
where job_title = 'Database Administrator';

select * from hs_hr_employees
where job_title_code = 
(select id from ohrm_job_title
where job_title = 'Database Administrator');

select work_station from hs_hr_employees
where work_station is not null;

select * from ohrm_location;

-- i want to see all data of employees who work in the North Office

select * from hs_hr_employees
where work_station =
(select id from ohrm_location where name = 'North Office');

-- display first name last name of emp whp work in canada

select emp_firstname, emp_lastname from hs_hr_employees
where work_station =
(select id from ohrm_location where country_code = 'CA');

select emp_firstname, emp_lastname from hs_hr_employees
where nation_code =
(select id from ohrm_nationality where name = 'American');

select * from ohrm_nationality;

select * from hs_hr_employees;
select * from employee;

select emp_firstname, emp_lastname from hs_hr_employees
where work_station =
(select id from ohrm_location where country_code = 'US');

select * from hs_hr_emp_language;

-- Display employee’s first name, lastname and dob who makes the highest salary in the company?
select * from employee;
select emp_firstname, emp_lastname, emp_birthday, employee_id from hs_hr_employees;





