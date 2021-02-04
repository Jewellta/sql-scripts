select  c.name, c.city, c.state, c.sales, ol.product, 
ol.Description, ol.price, ol.quantity

from customers c
left join orders o on c.id=o.customerid
left join orderlines ol on ol.ordersid=o.id
order by c.name;