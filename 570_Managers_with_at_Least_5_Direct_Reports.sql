570_Managers_with_at_Least_5_Direct_Reports.sql

SELECT
    m.name
FROM Employee e
JOIN Employee m
    ON e.managerId = m.id
GROUP BY
    m.id
HAVING COUNT(*) >= 5