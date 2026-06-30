1661_Average_Time_of_Process_per_Machine.sql

# Write your MySQL query statement below
select machine_id,
round(sum(case when activity_type='start' then timestamp * -1 
else timestamp * 1 end)/(count(distinct process_id)),3) as processing_time
from Activity 
group by 1
