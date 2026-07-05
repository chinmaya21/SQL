1204_Last_Person_to_Fit_in_the_Bus.sql

# Write your MySQL query statement below
select person_name 
from
(select 
person_name,
sum(weight) over(order by turn rows between unbounded preceding and CURRENT ROW) as cum_sum 
from 
Queue 
)D
where cum_sum<=1000 
ORDER BY cum_sum DESC 
LIMIT 1