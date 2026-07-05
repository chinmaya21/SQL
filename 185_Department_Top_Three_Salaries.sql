185_Department_Top_Three_Salaries.sql

# Write your MySQL query statement below
with ranked_dept as (
    select 
        e.id
        ,e.name as employee
        ,e.salary 
        ,d.name as department
        ,dense_rank() over (
            partition by e.departmentId
            order by e.salary desc
        ) as salary_rank
    from Employee as e
    join Department d
    on e.departmentId = d.id
)
select 
department
,employee
,salary
from ranked_dept
where salary_rank <= 3
order by department, salary DESC