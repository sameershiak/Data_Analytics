create database sql_joins;

use sql_joins;

create table customer
(
customername varchar(20),
customerid varchar(20),
address varchar(20),
city varchar(20),
postalcode varchar(20),
country varchar(20),
primary key (customerid)
);

create table order_info
(
orderid int,
customerid varchar(20),
employeeid int,
orderdate datetime,
shipperid int,
primary key (orderid)
);

desc customer;

desc order_info;

INSERT INTO customer
VALUES
('sameer','C101','Rayachoty','Annamayya','516269','India'),
('Prasad','C102','Pileru','Annamayya','516214','India'),
('jagadeesh','C103','Hyderabad','Telangana','500001','India'),
('saleem','C104','Pune','Maharashtra','411001','India'),
('premsai','C105','Chennai','Tamil Nadu','600001','India');

select *from customer;

INSERT INTO order_info
VALUES
(1001,'C101',201,NOW(),1),
(1002,'C102',202,NOW(),2),
(1003,'C103',203,NOW(),3),
(1004,'C104',204,NOW(),4),
(1005,'C105',205,NOW(),5);

select *from order_info;

SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate
FROM customer c
LEFT JOIN order_info o
ON c.customerid = o.customerid;


SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
Right JOIN order_info o 
ON c.customerid = o.customerid;


SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
inner JOIN order_info o 
ON c.customerid = o.customerid;
 
 
SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
LEFT outer join order_info o 
ON c.customerid = o.customerid;


SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
right outer JOIN order_info o 
ON c.customerid = o.customerid;


SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
LEFT JOIN order_info o 
ON c.customerid = o.customerid

union 

SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
right JOIN order_info o 
ON c.customerid = o.customerid;

SELECT *
FROM customer c
INNER JOIN order_info o
ON c.customerid = o.customerid;

INSERT INTO customer
VALUES('Kiran','C106','Delhi','Delhi','110001','India');

SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
LEFT JOIN order_info o 
ON c.customerid = o.customerid;

SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
Right JOIN order_info o 
ON c.customerid = o.customerid;

select *from customer;

select *from order_info;

INSERT INTO order_info
VALUES(1007,'C107',201,NOW(),10);

SELECT c.customerid,
c.customername,
c.country,
o.orderid,
o.orderdate 
FROM customer c 
LEFT JOIN order_info o 
ON c.customerid = o.customerid;

select *from customer;

select *from order_info;