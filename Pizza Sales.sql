create database pizzadb;
use pizzadb;
select * from pizza_sales;

## QUERY :-
# 1) calculate the total revenue .
select sum(total_price) as total_revenue from pizza_sales; # ans: 817860.049999993
# 2) calculate the average order value.
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_value
FROM
    pizza_sales; # ans: 38.307262295081635
 # 3) calculate the total pizza sold( the sum of quantities of all pzzas sold) .
 select sum(quantity) from pizza_sales; # ans: 49574
 # 4) calculate the total order placed.
 select COUNT(DISTINCT order_id) from pizza_sales; # ans: 21350
 # 5) Calculate the average number of pizzas sold per order (calculate by total number of pizzas sold by total number of orders)
 select cast(sum(quantity)/COUNT(DISTINCT order_id) as decimal(10,2)) from pizza_sales; # ans: 2.3220
 
 # CHART QUARIES:-
 # 1) Daily trends for orders.
SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY MIN(DAYOFWEEK(STR_TO_DATE(order_date, '%d-%m-%Y')));
# 2) Monthly trends orders.
select monthname(str_to_date(order_date,'%d-%m-%y')) as order_month,
count(distinct order_id) as total_orders from pizza_sales
group by monthname(str_to_date(order_date,'%d-%m-%y')),month(str_to_date(order_date,'%d-%m-%y'))
order by total_orders desc;
#  3) percentage of sales by pizza category.
select pizza_category , sum(total_price) as total_price, sum(total_price) *100 /(select sum(total_price) from pizza_sales) as total_percentage
from pizza_sales
group by pizza_category;


## just add a new column and chanfe the order_date column data type into date
 set sql_safe_updates=0;
 

ALTER TABLE pizza_sales add column order_date_new date;
UPDATE pizza_sales 
SET order_date_new = STR_TO_DATE(order_date, '%d-%m-%Y');
SELECT order_date, order_date_new 
FROM pizza_sales 
LIMIT 10;

# 4) percentage of sales by pizza size for january month

select pizza_size , sum(total_price) as total_price, cast(sum(total_price) *100 /(select sum(total_price) from pizza_sales  where month(order_date_new)=1)  as DECIMAL (10,2))as total_percentage
from pizza_sales
where month(order_date_new)=1
group by pizza_size
order by pizza_size;

#percentage of sales by pizza size for 1st quater
 select pizza_size , sum(total_price) as total_price, cast(sum(total_price) *100 /(select sum(total_price) from pizza_sales  where quarter(order_date_new)=1)  as DECIMAL (10,2))as total_percentage
from pizza_sales
where quarter(order_date_new)=1
group by pizza_size
order by pizza_size;

# 5) total pizza sold by piza category.
select pizza_category, sum(quantity) from pizza_sales group by pizza_category;

#6) top 5 best sellers by revenue, total quality and total orders.
select * from pizza_sales;
select pizza_name, sum(total_price) as total_sales, sum(quantity) as total_quantity, count(distinct order_id) as total_order 
from pizza_sales group by pizza_name order by total_sales desc limit 5;

# 7) worst 5 pizza sellers by revenue, total quality and total orders.
select * from pizza_sales;
select pizza_name, sum(total_price) as total_sales, sum(quantity) as total_quantity, count(distinct order_id) as total_order 
from pizza_sales group by pizza_name order by total_sales asc limit 5;


