create database Aggregate;

use Aggregate;

select *from student_performance_updated_1000;

select count(AttendanceRate) from student_performance_updated_1000;

select max(FinalGrade) from student_performance_updated_1000;

select min(FinalGrade) from student_performance_updated_1000;

SELECT FinalGrade, COUNT(*) AS StudyHoursPerWeek FROM student_performance_updated_1000 GROUP BY FinalGrade;

select avg(StudyHoursPerWeek) from student_performance_updated_1000;