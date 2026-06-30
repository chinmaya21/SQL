1070_	Product_Sales_Analysis_III.sql



# Write your MySQL query statement below
select 
S.product_id,
S.year as first_year,
S.quantity,
S.price 
from 
Sales S
inner join
(
    select 
      product_id,
      min(year) as first_year 
    from 
    Sales group by product_id
)tmp
on s.product_id=tmp.product_id 
and s.year=tmp.first_year
