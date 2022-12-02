delimiter //

create procedure SelectCustomerByCityAndPin(IN mycity varchar(50), IN pcode varchar(15))
Begin
select customerName from customers where city=mycity and postalCode=pcode;
End //

delimiter ;

call SelectCustomerByCityAndPin('Singapore', '079903');