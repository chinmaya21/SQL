602_Friend_Requests_II:_Who_Has_the_Most_Friends.sql
# Write your MySQL query statement below

SELECT A.id as id, COUNT(*) as num
FROM (
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as id FROM RequestAccepted
) as A
GROUP BY A.id
ORDER BY COUNT(*) desc
LIMIT 1