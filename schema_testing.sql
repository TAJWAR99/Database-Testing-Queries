show databases;
use classicmodels;
show tables;
-- check the schema table
describe information_schema.columns;
-- check the number of columns in the table
select count(*) as numberOfColumns from information_schema.columns where 
table_name="customers";
-- check the column name of the tablse 
select column_name from information_schema.columns where table_name="customers";
-- check the data type of the columns of the table
select column_name, data_type from information_schema.columns where table_name="customers";
-- check the size of the columns of the table
select column_name, column_type from information_schema.columns where table_name="customers"; 
select column_name="creditLimit",column_type from information_schema.columns where table_name="customers";
-- check the nullabel columns of the table
select column_name, is_nullable from information_schema.columns where table_name="customers";
-- check the column keys of the column of the table
select column_name, column_key from information_schema.columns where table_name="customers";