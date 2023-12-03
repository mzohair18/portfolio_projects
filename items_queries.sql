use swiggy;
select count(distinct name) from items;

#no of veg/non-veg items
select is_veg,count(name) as item from items
group by is_veg

#no of distinct orders placed
select count(distinct order_id) as no_of_orders_placed from items

#no of non-veg items ordered
select count(*) from items
where name like '%Chicken%'

#no of paratha items ordered
select count(*) from items
where name like '%Paratha%'

#avg no. of items per order?
select count(name)/count(distinct order_id) as avgitems from items


#most items ordered?
select name,count(*) as ordered from items
group by name
order by ordered desc

