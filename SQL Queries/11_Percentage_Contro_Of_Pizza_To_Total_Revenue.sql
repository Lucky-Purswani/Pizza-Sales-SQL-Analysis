-- Q-11 Calculate the percentage contribution of each pizza type to total revenue.

-- select pizzas.pizza_id, sum(order_details.quantity * pizzas.price) 
-- from pizzas
-- join order_details 
-- on pizzas.pizza_id = order_details.pizza_id
-- group by pizzas.pizza_id;

SELECT 
    pizza_types.pizza_type_id AS pizza_type,
    ROUND((SUM(order_details.quantity * pizzas.price) / (SELECT 
				SUM(order_details.quantity * pizzas.price)
			FROM
				order_details
			JOIN
				pizzas ON order_details.pizza_id = pizzas.pizza_id) * 100),
		2) AS percentage_contribution
FROM
    pizzas
JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.pizza_type_id
ORDER BY percentage_contribution DESC;