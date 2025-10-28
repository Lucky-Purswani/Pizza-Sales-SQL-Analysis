-- Q-3 Identify the highest-priced pizza.


-- Getting the max
-- SELECT pizza_type_id, price
-- FROM pizzas
-- WHERE price = (SELECT MAX(price) FROM pizzas);

-- Only the name of the max priced pizza
-- SELECT name from pizza_types where pizza_type_id = (
-- SELECT pizza_type_id
-- FROM pizzas
-- WHERE price = (SELECT MAX(price) FROM pizzas));

-- Now the name + price of the max priced pizza
SELECT pizza_types.name as name_of_pizza, pizzas.price 
from pizzas 
join pizza_types
	on (pizzas.pizza_type_id = pizza_types.pizza_type_id)
where pizzas.price = (SELECT MAX(price) FROM pizzas);
-- OR
SELECT 
    name,
    (SELECT MAX(price) FROM pizzas) AS price
FROM pizza_types
WHERE pizza_type_id = (
    SELECT pizza_type_id
    FROM pizzas
    WHERE price = (SELECT MAX(price) FROM pizzas)
);
