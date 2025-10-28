-- Q-8 Join relevant tables to find the category-wise distribution of pizzas.

select category as pizza_category, count(name) no_of_pizzas from pizza_types
group by category;