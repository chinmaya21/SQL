180_Consecutive_Numbers.sql

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2
    ON l1.id + 1 = l2.id
JOIN Logs l3
    ON l2.id + 1 = l3.id
WHERE l1.num = l2.num
  AND l2.num = l3.num;


/*
# Write your MySQL query statement belows 
select distinct num as ConsecutiveNums from
(select 
num,
lead(num) over(order by id) as next_num,
lead(num,2) over(order by id) as next_2_num 
from 
Logs )D
where num=next_num and num = next_2_num
*/