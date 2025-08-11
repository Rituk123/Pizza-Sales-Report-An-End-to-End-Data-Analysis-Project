CREATE TABLE pizza_sales(
pizza_id int8,
order_id int8,
pizza_name_id varchar(100),
quantity int8,
order_date date,
order_time	time,
unit_price	float,
total_price	float,
pizza_size	varchar,
pizza_category	varchar(100),
pizza_ingredients varchar(1000),
pizza_name varchar(500)
)

select*from pizza_sales

SELECT SUM(total_price) as total_revenue from pizza_sales

select sum(total_price)/ count(distinct order_id) as average_order_value from pizza_sales

select sum(quantity) as total_pizza_sold from pizza_sales

select count(distinct order_id) as total_order from pizza_sales

select sum(quantity)/count(distinct order_id) as average_pizza_per_order from pizza_sales

select TO_CHAR(order_date,'Day') as order_day, count(distinct order_id) as total_orders from pizza_sales
group by TO_CHAR(order_date,'Day')

select TO_CHAR(order_date,'Month') as order_month, count(distinct order_id) as total_orders from pizza_sales
group by TO_CHAR(order_date,'Month')
order by total_orders desc

select pizza_category,sum(total_price) as Total_sales,
sum(total_price)*100/(select sum(total_price)from pizza_sales) as percent_total_sales
from pizza_sales
group by pizza_category

SELECT pizza_category, SUM(total_price) AS Total_sales,
 SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales WHERE EXTRACT(MONTH FROM order_date) = 1) AS percent_total_sales
FROM pizza_sales
WHERE EXTRACT(MONTH FROM order_date) = 1
GROUP BY pizza_category
ORDER BY Total_sales DESC;

SELECT pizza_size, SUM(total_price) AS Total_sales,
SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales WHERE EXTRACT(MONTH FROM order_date) = 1) AS percent_total_sales
FROM pizza_sales
WHERE EXTRACT(MONTH FROM order_date) = 1
GROUP BY pizza_size
ORDER BY Total_sales DESC;

SELECT pizza_size, SUM(total_price) AS Total_sales,
SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales) AS percent_total_sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Total_sales DESC;

SELECT pizza_size, SUM(total_price) AS Total_sales,
SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales where extract (quarter from order_date)=1) AS percent_total_sales
FROM pizza_sales
where extract (quarter from order_date)=1
GROUP BY pizza_size
ORDER BY Total_sales DESC;

--total pizza sold by pizza category
select pizza_category,sum(quantity)as total_sales from pizza_sales
group by pizza_category

--top 5 best sellers by revenue, Total Quantity and total orders
select pizza_name,sum(total_price) as revenue from pizza_sales
group by pizza_name
Order by revenue desc
limit 5

select pizza_name,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
Order by total_quantity desc
limit 5

select pizza_name, count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
Order by total_orders desc
limit 5

--bottom 5 best sellers by revenue, Total Quantity and total orders
select pizza_name,sum(total_price) as revenue from pizza_sales
group by pizza_name
Order by revenue asc
limit 5

select pizza_name,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
Order by total_quantity  asc
limit 5

select pizza_name, count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
Order by total_orders  asc
limit 5

