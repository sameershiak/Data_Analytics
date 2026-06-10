create database dml;

use dml;

create table emp_details(
first_name varchar(20),
last_name varchar(20),
designation varchar(25),
age int,
salary float);

Insert into emp_details values('shaik','sameer hussain','secratery',24,19500.00),
('mallela','vedantheswar','programmer',25,45300.00),
('chinthala','jagadeesh','data scientist',44,75020.00),
('degani','surya prakash','data analyst',35,20300.00),
('jeldi','david samuel finny','secratery',23,10300.00),
('mahammad','akthar','data analyst',21,12300.00),
('patan','afzal khan','programmer',17,65300.00);

select *from emp_details; 

select first_name, salary from emp_details where designation='programmer';
select first_name, salary from emp_details where designation like '%programmer%';
select *from emp_details where first_name like '%ani';
select *from emp_details where last_name like '_kthar';

set SQL_SAFE_UPDATES=0;

update emp_details set designation='data engineer' where first_name='chinthala';
update emp_details set first_name='cinthol' where last_name='jagadeesh';
update emp_details set age=age+1 where first_name='chinthala';
update emp_details set designation='hacker' where age in (25,17);
update emp_details set salary=salary+3500 where salary<=19500;
update emp_details set salary=salary+4500 where salary>=19500;
update emp_details set designation='programmer-3' where age in (25,17);
update emp_details set designation='data engieer' where first_name='chinthala';

select *from emp_details; 