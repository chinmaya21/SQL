577_Employee_Bonus.sql

# Write your MySQL query statement below
select E.name,B.bonus
from 
employee E 
left join 
Bonus B 
on E.empId=B.empId
where B.bonus <1000 or B.empid is null