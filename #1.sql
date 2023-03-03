/* 
DAY 1
*/

/*
https://dev.mysql.com/doc/refman/8.0/en/comments.html#:~:text=MySQL%20Server%20supports%20three%20comment,newline%2C%20and%20so%20on).
*/


show databases;           #THIS WILL SHOW DATABASE
drop database ineuron_assign;   #THIS WILL DROP DATABASE
create database ash_new;  #THIS WILL CREATE DATABASE
use ash_new; 			  #while creating table in database we need to use that database				


/*CREATING TABLE IN DATABASE*/

create table Persons (
PersonID int,
LastName varchar(255),         /*creating table in database*/
FirstName varchar(255),
Address varchar(255),
City varchar(255));

drop table Persons;  #THIS WILL DROP TABLE
alter table Persons rename Pers; #rename table name
drop table Pers;   #THIS WILL DROP TABLE
select * from Persons; # quering