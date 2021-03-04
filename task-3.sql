SELECT  products.product_name, SUM((order_details.unit_price-order_details.unit_price*order_details.discount)*order_details.quantity)::Integer  AS sum
FROM public.products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_name
ORDER BY sum
LIMIT 10;