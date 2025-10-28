-- Q-10 Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name as pizza_name,
    sum(order_details.quantity * pizzas.price) AS Total_Revenue
FROM
    order_details
JOIN
    pizzas
ON order_details.pizza_id = pizzas.pizza_id
join pizza_types
on pizzas.pizza_type_id = pizza_types.pizza_type_id
group by pizza_types.name
order by Total_Revenue desc limit 3
;