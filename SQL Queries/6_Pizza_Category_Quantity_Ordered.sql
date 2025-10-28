-- Q-6 Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category as pizza_category, SUM(order_details.quantity) AS total_quantity_ordered
FROM
    pizzas
JOIN
    order_details
ON pizzas.pizza_id = order_details.pizza_id
JOIN
    pizza_types
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.category
ORDER BY total_quantity_ordered DESC;