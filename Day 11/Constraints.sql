create database mits;

use mits;

create table students(
stuid int not null primary key,
stuname varchar(20),
stuage int,
studepartment varchar(30));

desc students;

insert into students(
stuid,stuname,
stuage,
studepartment) 
values(1,'Sameer',22,'CST'),
(2,'David',20,'MECH'),
(3,'Veda',18,'CSE'),
(4,'Surya',18,'ECE');

select *from students;

create table dep(
depid int,
stuid int,
depname varchar(20),
primary key(depid),
foreign key(stuid) 
references students(stuid));

desc dep;