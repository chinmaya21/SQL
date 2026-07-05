176_Second_Highest_Salary.sql 


SELECT
    IFNULL(
        (
            SELECT distinct salary
            FROM (
                SELECT
                    salary,
                    DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
                FROM Employee
            ) d
            WHERE rnk = 2
        ),
        NULL
    ) AS SecondHighestSalary;
