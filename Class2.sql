-- use syntaxhrm_mysql;

select emp_firstname, emp_lastname from hs_hr_employees
where employee_id =12345;

select * from hs_hr_employees
where employee_id =12345;

select * from hs_hr_employees where emp_lastname='Smith';

select * from employee where salary>100000;

select emp_birthday from hs_hr_employees where emp_birthday<'2000-01-01';



