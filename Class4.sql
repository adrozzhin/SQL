use syntaxhrm_mysql;

select upper(FirstName) from person;

-- aggregate functions (max, min, avg, sum, count)ALTER

select * from hs_hr_emp_basicsalary;

select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary;

select * from hs_hr_employees;

select count(*), provin_code, emp_firstname, emp_lastname 
from hs_hr_employees 
where provin_code in ('Maryland', 'DC', 'MA') 
group by provin_code;

select count(*), provin_code
from hs_hr_employees 
group by provin_code
order by 1 desc;

select count(*), provin_code
from hs_hr_employees 
group by provin_code
having count(*)>1
order by 1;

select count(*), provin_code
from hs_hr_employees 
where provin_code in ('VA', 'MA') 
group by provin_code
having count(*)>1
order by 1;

-- subquery - query within a query

-- inner query executes first -> gives result that serves as a condition to the other query

-- how to display employee firstname and lastname with lowest salary

select emp_firstname, emp_lastname from hs_hr_employees
where emp_number =
(select emp_number from hs_hr_emp_basicsalary order by ebsal_basic_salary limit 1);

select * from ohrm_job_title;

select * from hs_hr_employees
where job_title_code =1;

select * from hs_hr_employees
where job_title_code =
(select id from ohrm_job_title where job_title='Cloud Architect');

select * from hs_hr_employees
where job_title_code in 
(select id from ohrm_job_title where job_title in ('Freelancer', 'Self Employed'));

-- display emergency contact name and phone number of Vlad Tepes

select * from hs_hr_employees;
select * from hs_hr_emp_emergency_contacts;

select eec_name, eec_mobile_no from hs_hr_emp_emergency_contacts
where emp_number = 
(select emp_number from hs_hr_employees where emp_firstname = 'Vlad' and emp_lastname = 'Tepes');

-- to view data from multiple tables we use joins

-- emp fname emp lname job title

select emp_firstname, emp_lastname, job_title from hs_hr_employees EM
join ohrm_job_title JT
on EM.job_title_code = JT.id;

-- emp fname emp lname nationality
select emp_firstname, emp_lastname, ohrm_nationality.name from hs_hr_employees
join ohrm_nationality
on hs_hr_employees.nation_code = ohrm_nationality.id;

select * from hs_hr_employees;
-- Display employees number, first name and lastname and their employment status name. Sort results based on the last name.
select emp_number, emp_firstname, emp_lastname, name 
from hs_hr_employees EMP join ohrm_employment_status EMP_ST
on EMP.emp_status = EMP_ST.id
order by 3;

select * from ohrm_job_title;
-- Display employees number, first name and lastname and job title only for Developers and Application Developers.
select emp_number, emp_firstname, emp_lastname, job_title
from hs_hr_employees EMP join ohrm_job_title JT
on EMP.job_title_code = JT.id
where JT.job_title in ('Developer', 'Application Developer');

-- Display employees number, first name and nationality only for employees whose nationality starts with A.
select emp_number, emp_firstname, emp_lastname, name 
from hs_hr_employees join ohrm_nationality
on hs_hr_employees.nation_code = ohrm_nationality.id
where ohrm_nationality.name like 'A%';

select * from employee
order by empId;

select * from person
order by empId;

-- fname, lname, age, salary, department
select FirstName, LastName, age, salary, department
from person p join employee e
on p.empId = e.empId;

select FirstName, LastName, age, salary, department
from person p left join employee e
on p.empId = e.empId;

select FirstName, LastName, age, salary, department
from person p right join employee e
on p.empId = e.empId;

select firstname, lastname from person
union all
select emp_firstname, emp_lastname from hs_hr_employees;

select firstname, lastname from person
union
select emp_firstname, emp_lastname from hs_hr_employees;

