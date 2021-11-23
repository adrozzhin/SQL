use syntaxhrm_mysql;

select * from person;
select distinct FirstName, LastName from person;
select distinct FirstName, LastName from person limit 3;
select * from person where not age = 23;
select * from person where age <> 23;
#comments
-- comments
select * from person where city = 'London';
select * from person where city = '0';
select * from person where city = '';
select * from person where city = 0;
select * from person where city is null;
select * from person where gender='M' and age=23 and city = 'Sydney';
select * from person where gender='M' or age=30 or city = 'Sydney';
select * from person where gender='M' or age=30 or city = 'Sydney';
select * from person where age =23 or age=30 or age=28;
select * from person where age in (23,30,28);

select * from person where age between 23 and 28;
select * from person where age >= 23 and age<= 28;

select * from person order by age, empid;
select * from person order by lastname, firstname;
select * from person order by lastname, firstname desc;
select * from person where firstname like '%o%'; -- contains from java
select * from person where firstname like 'a%'; -- starts with from java
select * from person where firstname like '%a'; -- ends with from java
select * from person where firstname like '___a'; -- ends with fixed length from java
select count(*)  as count from person where firstname like '_a_a';
select count(*)  as count from person where firstname like '_a_a';
select length(firstname) as count from person where firstname like '_a_a';