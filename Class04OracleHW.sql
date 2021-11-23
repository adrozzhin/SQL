select * from hr.employees;
select * from hr.departments;
select * from hr.jobs;

-- Display last name in uppercase, first name in lowercase and email in init capital.
select upper(LAST_NAME), lower(FIRST_NAME), initcap(EMAIL) from hr.employees;

-- Verify how many employees don’t get the commission?
select count(*) EMP_WITH_NO_COMISSION
from hr.employees
where COMMISSION_PCT is null;

-- Display maximum salary for each job ids?
select job_id, max(SALARY)
from hr.employees
group by JOB_ID;

-- Display the number of people, average salary, and max salary in each department
select 
    count(EMP.FIRST_NAME) NUMBER_OF_PEOPLE,
    round(avg(EMP.salary),0) AVG_SALARY,
    max(EMP.salary) MAX_SALARY,
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
order by 1 desc;

-- How can we find how many IT Programmers work in the company?
select count(*) NUMBER_OF_IT_PROGRAMMERS from hr.employees
where JOB_ID =
(select JOB_ID from hr.jobs where JOB_TITLE ='Programmer');

-- How many employees’ first names start with A? 
select count(*) EMPLOYEES_WITH_FIRSTNAME_STARTS_WITH_A
from hr.employees
where FIRST_NAME like 'A%';

-- Can you find the average salary in each department? Please sort results by the salary.
select 
    round(avg(EMP.salary),0) AVG_SALARY,
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
order by 1 desc;

-- Display how many Sales Representative, Accountant and Stock managers are hired by the company?
select count(*) from hr.employees
where JOB_ID in ('SA_REP','ST_MAN','FI_ACCOUNT');

-- How can you find out AVG salary for employees per departments where average salary is more than 6500
select 
    round(avg(EMP.salary),0) AVG_SALARY,
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
having avg(EMP.salary)>6500
order by 1 desc;

-- How can I see the number of employees that work in a department who’s total number is more than 5 people?
select 
    count(*) NUMBER_OF_EMPLOYEES,
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
having count(*)>5
order by 1 desc;

-- How can I see max salary for all job ids where max salary will be more that 4000.
select 
    max(salary),
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
having max(salary)>4000
order by 1 desc;

-- Please display the max highest salaries per job id on top.
select 
    max(salary),
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
order by 2 desc;

-- How can I find out the average salary of people working for departments 80 through 120, but I want to see only those departments where the average salary is between 8000 to 10000?
select 
    round(avg(salary),0) AVERAGE_SALARY,
    EMP.DEPARTMENT_ID,
    DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
where EMP.DEPARTMENT_ID between 80 and 120
group by EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
having avg(salary) between 8000 and 10000
order by 2 desc;

--  List all employees who were hired after Mavris?
select * from hr.employees
where LAST_NAME = 'Mavris';

select * from hr.employees
where HIRE_DATE>
(select HIRE_DATE from hr.employees where LAST_NAME = 'Mavris')
order by HIRE_DATE;

-- How to retrieve information about the employee who earns the lowest  salary?
select * 
from hr.employees
order by SALARY
FETCH FIRST 1 ROW ONLY;

-- Display all country names that belong to Europe?

select * from hr.countries
where REGION_ID =
(select REGION_ID from hr.regions where REGION_NAME ='Europe');

-- Count of employees who  earn more than average salary?
select count(*) from hr.employees
where SALARY > 
(select avg(salary) from hr.employees);

-- How to display the name of the department where Steven King works?
select 
    DEP.DEPARTMENT_NAME, EMP.FIRST_NAME, EMP.LAST_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
where EMP.FIRST_NAME = 'Steven' and EMP.LAST_NAME = 'King'
group by DEP.DEPARTMENT_NAME, EMP.FIRST_NAME, EMP.LAST_NAME;

-- Can you display information of employees who work in Seattle?

select * from hr.employees
where DEPARTMENT_ID in
(select DEPARTMENT_ID from hr.departments where LOCATION_ID =
(select LOCATION_ID from hr.locations where CITY ='Seattle'));

-- How can you display the third highest salary? 
select * from hr.employees
order by SALARY desc
OFFSET 2 ROWS 
FETCH NEXT 1 ROW ONLY;

-- Display employee id, last name, department name for each employee.
select EMP.EMPLOYEE_ID, EMP.LAST_NAME, DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID;

-- Display street address, city, country id and country name.
select LOC.STREET_ADDRESS, LOC.CITY, LOC.COUNTRY_ID, COUN.COUNTRY_NAME
from hr.locations LOC join hr.countries COUN
on LOC.COUNTRY_ID = COUN.COUNTRY_ID;

-- Show the employee id , last name, job id, salary , department id, department name for employees who are IT Programmers
select EMP.EMPLOYEE_ID, EMP.LAST_NAME, EMP.JOB_ID, EMP.SALARY, EMP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
where EMP.JOB_ID =
(select JOB_ID from hr.jobs where JOB_TITLE = 'Programmer');

-- Display department id, department names, country id and country names. 
select DEP.DEPARTMENT_ID, DEP.DEPARTMENT_NAME, LOC.COUNTRY_ID, COUN.COUNTRY_NAME
from hr.DEPARTMENTS DEP join hr.LOCATIONS LOC
on DEP.LOCATION_ID = LOC.LOCATION_ID
join hr.COUNTRIES COUN 
on LOC.COUNTRY_ID = COUN.COUNTRY_ID;

-- Display employee id, department name, and department id for departments 60 and 80.

select EMP.EMPLOYEE_ID, DEP.DEPARTMENT_NAME, EMP.DEPARTMENT_ID
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
where EMP.DEPARTMENT_ID between 60 and 80;

-- Display employee id, last name, salary, department name using table alias and sort results based on salary.
select EMP.EMPLOYEE_ID, EMP.LAST_NAME, EMP.SALARY, DEP.DEPARTMENT_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
order by EMP.SALARY;

-- Display employees employee id, first name, last name, department name and country name 
select EMP.EMPLOYEE_ID, EMP.FIRST_NAME, EMP.LAST_NAME, DEP.DEPARTMENT_NAME, COUN.COUNTRY_NAME
from hr.employees EMP join hr.departments DEP
on EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
join hr.LOCATIONS LOC
on DEP.LOCATION_ID = LOC.LOCATION_ID
join hr.COUNTRIES COUN
on LOC.COUNTRY_ID = COUN.COUNTRY_ID;