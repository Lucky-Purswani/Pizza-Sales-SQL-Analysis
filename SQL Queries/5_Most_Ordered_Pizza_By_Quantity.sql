-- Q-5 List the top 5 most ordered pizza types along with their quantities.

-- By pizza_type
-- SELECT 
--     pizzas.pizza_type_id, SUM(order_details.quantity) AS total_quantity_ordered
-- FROM
--     pizzas
-- JOIN
--     order_details 
--     ON pizzas.pizza_id = order_details.pizza_id
-- GROUP BY pizzas.pizza_type_id
-- ORDER BY total_quantity_ordered DESC LIMIT 5;

-- By pizza name
SELECT 
    pizza_types.name as pizza_name, SUM(order_details.quantity) AS total_quantity_ordered
FROM
    pizzas
JOIN
    order_details
ON pizzas.pizza_id = order_details.pizza_id
JOIN
    pizza_types
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.pizza_type_id
ORDER BY total_quantity_ordered DESC LIMIT 5;