use classicmodels;

call getOrderByCust(141,@shipped, @canceled, @resolved, @disputed);

select @shipped, @canceled, @resolved, @disputed;

-- Testing stored procedure

SELECT 
(select count(*) as shipped from orders where customerNumber=141 and status='Shipped') as Shipped,
(select count(*) as canceled from orders where customerNumber=141 and status='Canceled') as Canceled,
(select count(*) as resolved from orders where customerNumber=141 and status='Resolved') as Resolved,
(select count(*) as disputed from orders where customerNumber=141 and status='Disputed') as Disputed;