create database Views;

use Views;

show tables;

select *from student_performance_updated_1000;

create view student_gender as select *from student_performance_updated_1000 where gender='female';

create view Students_FinalGrade as select *from student_performance_updated_1000 where FinalGrade='72';

select *from churn_modelling;

create view balance as select *from churn_modelling where balance='142051.07';

select *from students_finalgrade;

select *from balance;