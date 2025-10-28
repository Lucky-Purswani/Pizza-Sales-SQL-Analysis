-- Q-12 Analyze the cumulative revenue generated over time.

select orders.order_date, SUM(order_details.quantity * pizzas.price) AS daily_revenue,
    SUM(SUM(order_details.quantity * pizzas.price)) 
        OVER (ORDER BY orders.order_date) AS cumulative_revenue
from pizzas
join order_details
on pizzas.pizza_id = order_details.pizza_id
join orders
on orders.order_id = order_details.order_id
group by orders.order_date
order by orders.order_date;