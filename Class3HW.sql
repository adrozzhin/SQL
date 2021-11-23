-- Display employee’s first name, lastname and dob who makes the highest salary in the company?
select * from hs_hr_employees;

select * from hs_hr_emp_basicsalary;

-- Display employee’s first name, lastname and dob who makes the highest salary in the company?
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_number = 
(select emp_number from hs_hr_emp_basicsalary where ebsal_basic_salary = (select max(ebsal_basic_salary) from hs_hr_emp_basicsalary));

-- Display employee’s first name, lastname and dob who makes the highest salary in the company? Other way

select max(ebsal_basic_salary) 
from hs_hr_emp_basicsalary
where ebsal_basic_salary<
(select max(ebsal_basic_salary) from hs_hr_emp_basicsalary);

select max(ebsal_basic_salary) 
from hs_hr_emp_basicsalary
where ebsal_basic_salary<
(select max(ebsal_basic_salary) 
from hs_hr_emp_basicsalary
where ebsal_basic_salary<
(select max(ebsal_basic_salary) from hs_hr_emp_basicsalary));


