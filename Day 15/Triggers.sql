CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2)
);

CREATE TABLE employee_audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    action_type VARCHAR(20),
    action_time DATETIME
);

DELIMITER $$

CREATE TRIGGER employee_insert_trigger

AFTER INSERT ON employees

FOR EACH ROW

BEGIN

INSERT INTO employee_audit
(employee_id,action_type,action_time)

VALUES
(NEW.employee_id,'INSERT',NOW());

END $$

DELIMITER ;

INSERT INTO employees
(employee_name,department,salary)

VALUES

('Sameer','Data Science',50000);

SELECT * FROM employee_audit;

DELIMITER $$

CREATE TRIGGER employee_update_trigger

AFTER UPDATE ON employees

FOR EACH ROW

BEGIN

INSERT INTO employee_audit
(employee_id,action_type,action_time)

VALUES

(NEW.employee_id,'UPDATE',NOW());

END $$

DELIMITER ;

UPDATE employees

SET salary=60000

WHERE employee_id=1;

SELECT * FROM employee_audit;

DELIMITER $$

CREATE TRIGGER employee_delete_trigger

AFTER DELETE ON employees

FOR EACH ROW

BEGIN

INSERT INTO employee_audit
(employee_id,action_type,action_time)

VALUES

(OLD.employee_id,'DELETE',NOW());

END $$

DELIMITER ;

DELETE FROM employees

WHERE employee_id=1;

SELECT * FROM employee_audit;

DELIMITER $$

CREATE TRIGGER salary_validation

BEFORE INSERT ON employees

FOR EACH ROW

BEGIN

IF NEW.salary < 20000 THEN

SIGNAL SQLSTATE '45000'

SET MESSAGE_TEXT='Salary cannot be below 20000';

END IF;

END $$

DELIMITER ;

INSERT INTO employees
(employee_name,department,salary)

VALUES

('Rahul','HR',15000);