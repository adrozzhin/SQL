use syntaxhrm_mysql;

-- How to find employees first name, last name that do not have home phone 
-- number and display first names in alphabetical order.
select emp_firstname, emp_lastname, emp_hm_telephone from hs_hr_employees where emp_hm_telephone is null order by 1;

-- How to display about all employees whose DOB has been entered. We want to see employees sorted by last name from Z-A?
select employee_id, emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday is not null order by 3 desc;

-- Display all employees whose last name ends with ‘a’.
select employee_id, emp_firstname, emp_lastname from hs_hr_employees where emp_lastname like '%a';

-- Display all HRMS offices except those located in US, Canada and Brazil
select * from ohrm_location where country_code not in ('US', 'CA', 'BR');

-- Verify all employees who were born from January 1st of 1980 until December 31st of 2000.
select employee_id, emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday between '1980-01-01' and '2000-12-31';

-- Display all nationalities that start with ‘C’?
select * from ohrm_nationality where name like 'C%';

-- Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.
select employee_id, emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday like '%-08-%' order by 3;

-- Job titles codes:
select * from ohrm_job_title where job_title in ('Developer', 'developer', 'dev', 'Dev', 'Freelancer', 'freelancer');

--  Verify all the employees who are managers.
select employee_id, emp_firstname, emp_lastname, job_title_code from hs_hr_employees where job_title_code = '30';

-- How to display first name, last name, dob of employees who is a Freelancer or developer.
select emp_firstname, emp_lastname, emp_birthday, job_title_code from hs_hr_employees where job_title_code in ('10', '29', '31', '120');