declare @lowcustsales decimal(9,2)= 20000
declare @highcustsales decimal(9,2)= 40000
--variables

select * from
customers where sales >= @lowcustsales and sales <= @highcustsales;
--all customers between values. old way

select * from
 customers where sales between @lowcustsales and @highcustsales
--all customers between values, new way
