1789_Primary_Department_for_Each_Employee.sql

select employee_id,department_id from
(select 
employee_id,
department_id,
row_number() over(partition by employee_id order by case when primary_flag='Y' then 1 else 2 end) as rnk 
from 
Employee)D 
where rnk=1 


/*
-- Follow this also
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(*) = 1
   );

*/
