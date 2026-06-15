use company_db;

CREATE TABLE employees1 (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department VARCHAR(30),
salary INT
);

INSERT INTO employees1 VALUES
(1,'Sameer','Data Science',60000),
(2,'Rahul','HR',45000),
(3,'Anjali','Data Science',75000),
(4,'Priya','HR',55000),
(5,'Kiran','IT',80000),
(6,'Aman','IT',70000);

SELECT employee_name,
department,
salary,

ROW_NUMBER() OVER(
ORDER BY salary DESC
) AS row_num

FROM employees;

SELECT employee_name,
salary,

RANK() OVER(
ORDER BY salary DESC
) AS rank_no

FROM employees;

SELECT employee_name,
salary,

DENSE_RANK() OVER(
ORDER BY salary DESC
) AS dense_rank_no

FROM employees;

SELECT employee_name,
salary,

LAG(salary,1)

OVER(
ORDER BY salary
)

AS previous_salary

FROM employees;

SELECT employee_name,
salary,

LEAD(salary,1)

OVER(
ORDER BY salary
)

AS next_salary

FROM employees;

SELECT employee_name,
salary,

FIRST_VALUE(salary)

OVER(
ORDER BY salary DESC
)

AS highest_salary

FROM employees;

SELECT employee_name,
salary,

LAST_VALUE(salary)

OVER(
ORDER BY salary DESC

ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING
)

AS lowest_salary

FROM employees;