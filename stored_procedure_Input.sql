delimiter //

create procedure SelectCustomersByCity(IN mycity varchar(50))
Begin
select * from customers where city=mycity;
End //

delimiter ;

call SelectCustomersByCity('Singapore');