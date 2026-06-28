197_Rising_Temperature.sql

# Write your MySQL query statement below

select id from
(select 
id,
recordDate,
temperature,
lag(recordDate) over(order by recordDate asc) as prev_day,
lag(temperature) over(order by recordDate asc) as prev_temp
from 
Weather)D
where datediff(recordDate,prev_day)=1 and temperature > prev_temp
