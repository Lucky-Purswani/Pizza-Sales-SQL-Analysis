-- Q-4 Identify the most common pizza size ordered.

SELECT 
    pizzas.size as size_of_pizza, COUNT(*) AS no_of_times_ordered
FROM
    pizzas
JOIN
    order_details 
    ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY no_of_times_ordered DESC;