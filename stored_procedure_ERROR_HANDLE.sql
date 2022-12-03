delimiter //

create procedure InsertSupplierProduct(IN inSupplierId INT, IN inProductId INT)
Begin

-- Exit if the duplicate key occurs
DECLARE EXIT handler for 1062 select 'Duplicate keys error encountered' Message;
DECLARE EXIT handler for SQLEXCEPTION select 'SQLEXCEPTION encountered' Message;
DECLARE EXIT handler for SQLSTATE '23000' select 'SQLSTATE 23000' Message;

insert into SupplierProducts(supplierID, productID) values (inSupplierId, inProductId);

select count(*) from SupplierProducts where supplierID = inSupplierId;

End //

delimiter ;