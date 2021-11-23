use syntaxhrm_mysql;

-- How can we display first name and last name of employee id 8335?
select emp_firstname, emp_lastname from hs_hr_employees where employee_id='8335';

-- How can you display unique relationship of employees from emergency contact table.
select distinct eec_relationship from hs_hr_emp_emergency_contacts;

-- How to display ex employer and ex job title for employee 9451?
SELECT 
    eexp_employer, eexp_jobtit
FROM
    hs_hr_emp_work_experience
WHERE
    emp_number = '21724';

-- How to display all the information of employee who was born after January 1 of 1980?

select * from hs_hr_employees where emp_birthday>'1980-01-01';

select * from person
order by 3;

select *
from hs_hr_employees
where employee_id = 25205;

select * 
from ohrm_job_title;

select * 
from hs_hr_employees;

select emp_lastname, emp_firstname, emp_birthday 
from hs_hr_employees
where emp_birthday is Null;

select emp_lastname, emp_firstname, emp_birthday 
from hs_hr_employees
where emp_birthday is NOT Null;

select employee_id, emp_lastname, emp_marital_status
from hs_hr_employees
where emp_marital_status is not null;

select emp_lastname, job_title_code from hs_hr_employees where job_title_code is Null;

select * from person where City ='New York' or City ='Istanbul';

select emp_lastname, emp_firstname
from hs_hr_employees
where emp_lastname='Smith' and emp_firstname='Sasha';

select emp_lastname, emp_firstname
from hs_hr_employees
where not emp_lastname='Smith'
order by emp_lastname;

select * from hs_hr_employees;

select emp_lastname, emp_firstname
from hs_hr_employees
where emp_lastname = 'Smith' or emp_lastname = 'Umurzakova' or emp_lastname = 'Black';

select emp_lastname, emp_firstname
from hs_hr_employees
where emp_lastname in ('Smith', 'Umurzakova', 'Black');

select *
from ohrm_nationality
where name in ('American', 'Congolese','Cypriot');

select *
from hs_hr_emp_basicsalary
where ebsal_basic_salary in (6000, 8500, 9000);

select *
from hs_hr_emp_basicsalary
where ebsal_basic_salary between 6000 and 9000;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname like '%a' 
order by 1 desc;

select emp_lastname, emp_firstname, emp_birthday 
from hs_hr_employees
where emp_birthday like '%-02-%';

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_lastname like '_a%' 
order by 1 desc;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_lastname like '_a_' 
order by 1 desc;