use sql3453197;
select * from person4;
select * from person;
drop table person4;
create table person(
id varchar(100) primary key,
firstname varchar(100),
lastname varchar(100),
gender varchar(1),
age int,
city varchar(100),
empid varchar(20), insert_date timestamp default current_timestamp on update current_timestamp);

insert into person(id,firstname,lastname,gender,age,city,empid) 
values ('1', 'Asghar', 'Nazir', 'M', '26','Lahore','1');

insert into person(id,firstname,lastname,gender,age,city) 
values ('2', 'Andrei', 'Drozzhin', 'M', '31','Luga');

select * from person4
union
select * from person;

select * from person4
union all
select * from person;

-- alter table person4 rename empid to emp_id; - on oracle
alter table person4 change empid emp_id varchar(20)

