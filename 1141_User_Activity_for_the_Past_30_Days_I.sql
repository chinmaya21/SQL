1141_User_Activity_for_the_Past_30_Days_I.sql

# Write your MySQL query statement below
select
activity_date as day,
count(distinct user_id) as active_users
from Activity
where activity_date between cast('2019-07-27' as date) - Interval 29 day and cast('2019-07-27' as date)
and activity_type in ('open_session', 'end_session', 'scroll_down', 'send_message')
group by activity_date