create database dql;

use dql;

create table emp_info(
first_name varchar(20),
last_name varchar(30),
emp_id int not null primary key,
emp_age int,
emp_city varchar(15),
emp_state varchar(20));

desc emp_info;

insert into emp_info (first_name,last_name,emp_id,emp_age,emp_city,emp_state) 
values('Sameer Hussain','Shaik',808,18,'kadapa','Andhra Pradesh'),
('Vedanheswar','Mallela',809,21,'Malakpet','Telangana'),
('Surya Prakash','Degani',810,25,'Pune','Maharashtra'),
('David Samuel Finny','Jeldi',811,28,'Bengaluru','Karnataka');

select *from emp_info;

select first_name,last_name from emp_info;

select count(emp_id) from emp_info;

select first_name as FirstName,last_name as LastName from emp_info;

select *from emp_info where emp_age>20;

select *from emp_info where emp_age>25 and emp_age<30;

select *from emp_info where first_name like 'S%';

select *from emp_info where last_name like '%A';

select *from emp_info where emp_age=18 or emp_age=28;

select *from emp_info where emp_age in (18,28);

select *from emp_info where emp_city like '%M%';

select first_name,last_name,emp_city from emp_info where emp_id>808;

select first_name,last_name,emp_city from emp_info where emp_id=810;

select *from emp_info where emp_age like '%25%';

select emp_city,emp_state from emp_info where emp_age>25;