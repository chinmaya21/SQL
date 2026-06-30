1068_Product_Sales_Analysis_I.sql
# Write your MySQL query statement below
select 
P.product_name,S.year,S.price 
from 
Sales S
inner join Product P 
on S.product_id=P.product_id
