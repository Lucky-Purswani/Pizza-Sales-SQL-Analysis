-- Q-7 Determine the distribution of orders by hour of the day.


select hour(order_time) as hours_time, count(order_id) as no_of_orders from orders
group by hours_time;
-- order by no_of_orders desc;