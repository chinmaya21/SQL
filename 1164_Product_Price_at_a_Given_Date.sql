1164_Product_Price_at_a_Given_Date.sql

# Write your MySQL query statement below
SELECT  product_id ,10 AS Price FROM Products WHERE product_id not in(SELECT distinct product_id FROM Products WHERE change_date <= '2019-08-16')
UNION
SELECT product_id,new_price AS price FROM Products
WHERE (product_id,change_date) IN (SELECT product_id , max(change_date) as date FROM Products WHERE change_date <= '2019-08-16' GROUP BY product_id);