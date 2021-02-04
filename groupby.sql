select city, count(*) as "nbr of customers", sum(sales) as 'sales',
	avg(sales) as "avg city sales"
from customers c
group by city;

--group by examples with sum, count, avg