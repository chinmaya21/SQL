1934_Confirmation_Rate.sql

# Write your MySQL query statement below
select 
S.user_id,
round(coalesce(sum(case when C.action='confirmed' then 1 else 0 end)/count(C.action),0.00),2) as confirmation_rate
from 
Signups S
left join 
Confirmations C 
on S.user_id=C.user_id 
group by S.user_id

