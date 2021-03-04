SELECT extract(year from orders.order_date) as year,
extract(month from orders.order_date) as month,
count(order_details.product_id) as order_count,
SUM((order_details.unit_price - order_details.unit_price * order_details.discount) * order_details.quantity)::integer as revenue
from order_details
inner join orders on orders.order_id = order_details.order_id
where extract(year from orders.order_date) = 1997
group by year, month;