550_Game_Play_Analysis_IV.sql


# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT tmp.player_id)/COUNT(DISTINCT A.player_id),2) as fraction
FROM (
    SELECT 
    player_id, 
    MIN(event_date) as event_date
    FROM activity 
    GROUP BY player_id 
    ) A
LEFT JOIN activity tmp on A.player_id = tmp.player_id AND A.event_date + INTERVAL 1 DAY = tmp.event_date