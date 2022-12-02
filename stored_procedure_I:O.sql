delimiter //

CREATE PROCEDURE getOrderByCust (IN cust_no INT, 
	OUT shipped INT,
    OUT canceled INT,
    OUT resolved INT,
    OUT disputed INT)
    
BEGIN

select count(*) INTO shipped from orders where customerNumber=cust_no and status='Shipped';

select count(*) INTO canceled from orders where customerNumber=cust_no and status='Canceled';

select count(*) INTO resolved from orders where customerNumber=cust_no and status='Resolved';

select count(*) INTO disputed from orders where customerNumber=cust_no and status='Disputed';

END //

delimiter ;


call getOrderByCust(141, @shipped, @canceled, @resolved, @disputed);
select @shipped, @canceled, @resolved, @disputed;
