select * from orders

#distinct orders?

SELECT COUNT(distinct order_id) from orders;

select distinct on_time from orders

#from how many restaurant orders were placed?
select count(distinct restaurant_name) from orders

#how many orders from specific restaurant?
select restaurant_name,count(*) as no_of_orders from orders

#which was the last order placed?
select order_time from orders

select date_format(order_time,'%Y:%M'),sum(order_total) as total_sum from orders
group by date_format(order_time,'%Y:%M')
order by total_sum


