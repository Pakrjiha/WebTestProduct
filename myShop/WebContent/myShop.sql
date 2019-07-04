create database myShop;
use myShop;
create table product(
	id int auto_increment,
	title text not null,
	content text not null,
	price int not null,
	Primary key(id));
	
desc product;