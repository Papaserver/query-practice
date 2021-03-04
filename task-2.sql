SELECT  categories.category_name AS category, COUNT(products.category_id) AS number_of_products
FROM public.categories
INNER JOIN products ON products.category_id = categories.category_id
Group BY categories.category_name
ORDER BY number_of_products DESC;