-- Q-9 Group the orders by date and calculate the average number of pizzas ordered per day.

-- Total number of the orders on each day.
-- select day(order_date) as the_day, count(order_id) as orders from orders
-- group by the_day;


-- Average
SELECT 
    ROUND(AVG(day_order), 0) AS avg_order_per_day
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS day_order
    FROM
        orders
    JOIN order_details
    ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) 
AS order_per_day_list
;