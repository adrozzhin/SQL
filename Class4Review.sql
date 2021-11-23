use syntaxhrm_mysql;
select * from person;
select * from employee;
-- single row function
select upper(firstname) from person;
select lower(firstname) from person;
select concat(firstname, ' ', lastname) as 'Full name' from person;
select round(7.125,2) from dual;
select lower('ABC') from dual;
select sysdate() from dual;
select substr('w3resource',4,3);
select emp_number, ebsal_basic_salary from hs_hr_emp_basicsalary
order by ebsal_basic_salary desc limit 2,1;

select emp_number, ebsal_basic_salary from hs_hr_emp_basicsalary
order by ebsal_basic_salary desc limit 2 offset 1;

select * from person;

select distinct empid from person
order by empid desc
limit 1 offset 1;

select count(*), firstname from person;
select count(empid) from person;
select count(empid), max(empid), min(empid), round(avg(empid),0), sum(empid) from person;
select count(empid), empid from person
where empid is not null
group by empid
having count(empid)>2;

