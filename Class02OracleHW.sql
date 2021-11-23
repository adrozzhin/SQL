REM   Script: Class02HWOracle
REM   Class02HWOracle

select * from departments;

select * from hr.departments;

select * from hr.departments;

select * from hr.employees;

select * from hr.departments;

select DEPARTMENT_ID from hr.employees;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.stockclerks;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.stock;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.employees where HIRE_DATE = '17-JUN-03'  
 
 
-- How to display first name, Salary, and job id of employees who earn more than or equal to 4000 or working as IT programmers. 
 
 
--  How can we see the first name, Salary, and job id of employees who earn more than 3000 and they work as stock clerks. Also need to see returned data sorted by name. 
 
 
-- How can we find all employees who do not work in Department 50 and are not stock clerks. 
 
 
-- How can we see all people whose job id belongs to Sales? 
 
 
-- How can we display all employees who work for Departments 50, 60, 80.  
 
 
-- Verify everyone who was hired on June of 2002. Please display in ascending order by name. 
 
 
-- Display all employees whose last name ends with ‘a’. 
 
 
-- Verify all employees who got hired from 17 June 2003 to 05 February 2006. 
 
 
-- Verify all the employees who are programmers, clerks and hr.  
 
 
-- Display all countries except Germany, Italy and Kuwait. 
 
 
-- Display all department names that start with ‘C’ and don’t forget to sort results by department id in descending order. 
 
 
-- Display all employees’ first names in which the third letter of the name is “u”.;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.employees where HIRE_DATE = '17-JUN-03';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=4000 where JOB_ID ='IT_PROG';

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.employees where HIRE_DATE = '17-JUN-03';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=4000 and JOB_ID ='IT_PROG';

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.employees where HIRE_DATE = '17-JUN-03';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=4000 and JOB_ID ='IT_PROG';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=3000 and JOB_ID ='ST_CLERK' order by FIRST_NAME;

select * from hr.departments;

select * from hr.employees;

select DEPARTMENT_ID from hr.employees;

select PHONE_NUMBER from hr.employees;

select LAST_NAME, HIRE_DATE from hr.employees;

select DEPARTMENT_ID, DEPARTMENT_NAME from hr.departments;

select EMPLOYEE_ID, SALARY from hr.employees where EMPLOYEE_ID = '120';

select distinct JOB_ID from hr.employees;

select FIRST_NAME, JOB_ID, SALARY from hr.employees where salary<=10000;

select * from hr.employees where JOB_ID = 'ST_CLERK';

select * from hr.employees where MANAGER_ID = '114';

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from hr.employees where COMMISSION_PCT is null order by LAST_NAME;

select * from hr.employees where JOB_ID = 'IT_PROG' order by SALARY desc;

select * from hr.employees where HIRE_DATE = '17-JUN-03';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=4000 and JOB_ID ='IT_PROG';

select FIRST_NAME, SALARY, JOB_ID from hr.employees where SALARY>=3000 and JOB_ID ='ST_CLERK' order by FIRST_NAME;

select * from hr.employees where DEPARTMENT_ID is not '50' and JOB_ID is not 'ST_CLERK' 
 
-- How can we see all people whose job id belongs to Sales? 
 
 
-- How can we display all employees who work for Departments 50, 60, 80.  
 
 
-- Verify everyone who was hired on June of 2002. Please display in ascending order by name. 
 
 
-- Display all employees whose last name ends with ‘a’. 
 
 
-- Verify all employees who got hired from 17 June 2003 to 05 February 2006. 
 
 
-- Verify all the employees who are programmers, clerks and hr.  
 
 
-- Display all countries except Germany, Italy and Kuwait. 
 
 
-- Display all department names that start with ‘C’ and don’t forget to sort results by department id in descending order. 
 
 
-- Display all employees’ first names in which the third letter of the name is “u”.;

