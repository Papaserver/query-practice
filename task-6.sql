SELECT customers.company_name,
count(orders.customer_id) as orders,
array_agg(orders.order_id) as order_ids
from customers
inner join orders on customers.customer_id  = orders.customer_id
where customers.country = 'USA'
group by company_name
having count(orders.customer_id) < 5
order by orders;