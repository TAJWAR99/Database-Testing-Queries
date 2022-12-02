delimiter //

create procedure GetCustomerShipping(
	IN pCustomerNumber INT,
	OUT pShipping varchar(50)
)
Begin

Declare customerCountry varchar(100);

select country INTO customerCountry from customers where customerNumber = pCustomerNumber;
CASE customerCountry 
	WHEN 'USA' THEN 
		SET pShipping = '2-day-shipping';
    WHEN 'CANADA' THEN 
		SET pShipping = '3-day-shipping';
    ELSE 
		SET pShipping = '4-day-shipping';
END CASE;

End //

delimiter ;

call GetCustomerShipping(112, @shipping);
select @shipping;