1683_Invalid_Tweets.sql
# Write your MySQL query statement below
select tweet_id from Tweets where length(content)>15
