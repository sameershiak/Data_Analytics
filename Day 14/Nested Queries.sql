use datetime;

show tables;

select *from Advertising_Data;

select *from Advertising_Data where Product_sold > (select avg(Product_sold) from Advertising_Data);
select avg(Product_sold) from Advertising_Data;

select Product_sold from Advertising_Data where TV='787.33';
select *from Advertising_Data where Product_sold > (select Product_sold from Advertising_Data where TV='787.33');

select TV from Advertising_Data where Product_sold = (select max(Product_sold) from Advertising_Data);