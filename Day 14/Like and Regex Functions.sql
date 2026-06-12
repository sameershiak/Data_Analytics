use datetime;

show tables;

select *from Advertising_Data;

select *from Advertising_Data where Affiliate_Marketing like '7%';

select count(*) from Advertising_Data where Product_Sold like '7%';

select count(*) from Advertising_Data where Product_Sold regexp '^1';

select count(*) from Advertising_Data where Affiliate_Marketing like '%7%'or Affiliate_Marketing like '%1%'or Affiliate_Marketing like '%2%';

select count(*) from Advertising_Data where Product_Sold regexp '[125]';

select count(*) from Advertising_Data where Product_Sold regexp '[1-2]';