declare @lowdate datetime = '2017-10-01';
declare @highdate datetime = '2017-12-31 23:59:59';

select *
from orders
where date >= @lowdate and date <= @highdate
-- last 3 months orders 