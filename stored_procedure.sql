delimiter //

create procedure SelectAllCustomers()
Begin
select * from customers;
End //

delimiter ;

call SelectAllCustomers();
