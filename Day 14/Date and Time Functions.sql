create database DateTime;

use DateTime;

CREATE TABLE orders (
    username VARCHAR(50),
    orderid INT PRIMARY KEY,
    productname VARCHAR(50),
    shippingdate DATE,
    deliverydate DATE
);
INSERT INTO orders (username, orderid, productname, shippingdate, deliverydate)
VALUES
('sameer', 1001, 'Laptop', '2026-06-01', '2026-06-05'),
('veda', 1002, 'Mobile Phone', '2026-06-02', '2026-06-06'),
('saleem', 1003, 'Headphones', '2026-06-03', '2026-06-07'),
('akthar', 1004, 'Smart Watch', '2026-06-04', '2026-06-08'),
('david', 1005, 'Keyboard', '2026-06-05', '2026-06-09'),
('premsai', 1006, 'Mouse', '2026-06-06', '2026-06-10'),
('afzal', 1007, 'Tablet', '2026-06-07', '2026-06-11'),
('surya', 1008, 'Printer', '2026-06-08', '2026-06-12'),
('shaariq', 1009, 'Camera', '2026-06-09', '2026-06-13'),
('jashu', 1010, 'Speaker', '2026-06-10', '2026-06-14');

select datediff(sysdate(),'2026-07-09') AS difference;

select datediff(shippingdate,'2026-07-09') AS difference from orders;

select date_format('2026-06-01','%d-%m-%y') as date;

select date_format('2026-06-01','%d-%M-%y') as month;

select date_format('2026-06-01','%W') as week;

select day(sysdate()) as days;

select month(sysdate()) as months;

select year(sysdate()) as years;

select quarter(sysdate());

select adddate(sysdate(), interval 10 day) as days;

select adddate(deliverydate, interval 10 day) as days from orders;

select adddate(sysdate(), interval 10 month) as months;

select adddate(sysdate(), interval 10 year) as years;

select adddate(sysdate(), interval 10 quarter) as quarters;