create database ddl1;

use ddl1;

create table employee(
first_name varchar(20),
last_name varchar(30),
title varchar(40),
age int,
salary int);

desc employee;

alter table employee add Gender varchar(1);

alter table employee add randome varchar(20);

desc employee; 

insert into employee (first_name,last_name,title,age,salary,Gender,randome) 
values('Sameer Hussain','Shaik','data science',21,60000,'M','A'),
('Vedanheswar','Mallela','software developer',18,50000,'F','B'),
('Surya Prakash','Degani','data engineer',20,75000,'M','C'),
('David Samuel Finny','Jeldi','farmer',20,45000,'O','D');

select *from employee;

alter table employee DROP column randome;

select *from employee;

SET SQL_SAFE_UPDATES = 0;

alter table employee add Experience int;

desc employee;

update employee set Experience=3 where first_name='Sameer Hussain';

update employee set Experience=5 where first_name='Vedanheswar';

update employee set Experience=2 where first_name='Surya Prakash';

update employee set Experience=6 where first_name='David Samuel Finny';

select *from employee;