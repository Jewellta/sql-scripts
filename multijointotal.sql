use prsdb;

-- select r.id, r.description,r.status, r.total, u.lastname, p.name , v.name as company, li.quantity,  p.price * li.quantity as 'subtotal' from request r

select r.description, sum(p.price *li.quantity) as 'total'
from request r
join users u on u.id=r.userid
join lineitems li on r.id=li.requestid
join products p on p.id=li.productid
join vendor v on v.id=p.vendorid
group by r.description;
 
select * from lineitems;