1667_Fix_Names_in_a_Table.sql

# Write your MySQL query statement below
Select 
user_id,concat(upper(substr(name,1,1)),lower(substr(name,2,length(name)))) as name 
from 
Users
order by user_id