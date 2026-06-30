1633_Percentage_of_Users_Attended_a_Contest.sql
# Write your MySQL query statement below

select 
contest_id,
round((count(user_id)/(select count(user_id) from Users)*100),2) as percentage 
from register 
group by contest_id
order by percentage desc, contest_id