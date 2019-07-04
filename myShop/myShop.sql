create database myshop;

show databases;

create table product(
	id varchar(20) not null unique,
	title varchar(50) not null,
	content varchar(255) not null,
	price int(20) not null
);

desc product;

insert into product values('p100','apple','mobile phone',200000);

select * from product;

update product set content = ?, price = ? where id = ? ;

select * from product;

delete from product where id = ?;

select * from product;

select * from product where id = ?  
