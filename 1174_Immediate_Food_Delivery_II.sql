1174_Immediate_Food_Delivery_II.sql


# Write your MySQL query statement below
select 
ROUND(100 * sum(case when D.ORDER_DATE=D.customer_pref_delivery_date 
then 1 else 0 END)/count(*),2) as immediate_percentage
from
DELIVERY D
INNER JOIN
(
select 
customer_id,
min(order_date) as min_order_date
from Delivery
group by customer_id
)DL
on D.CUSTOMER_ID=DL.CUSTOMER_ID 
AND D.ORDER_DATE = DL.MIN_ORDER_DATE
