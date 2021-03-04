SELECT country, count(country) as number_of_customers from customers
group by customers.country
HAVING COUNT(country) > 5
order by number_of_customers desc;