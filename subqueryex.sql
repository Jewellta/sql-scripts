select *
from customers c
where sales > (select avg(sales) from customers)
order by sales;
-- shows the sales above the average of sales

select avg (sales) 
from customers
--average of sales

select sales
from customers
--displaying the sales from customers