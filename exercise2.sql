-- Create DataBase

create database db_Exercise2;

-- Create Table

use db_Exercise2;

create table tb_products(
id bigint auto_increment,
name varchar(255) not null,
price decimal not null,
description varchar(255) not null,
discount decimal not null,
refurbished boolean not null,

primary key(id)
);

-- Insert Data
insert into tb_products(name, price, description, discount, refurbished) values("tv", 500, "TV Led", 20, FALSE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 200, "Aspirador", 20, TRUE);
insert into tb_products(name, price, description, discount, refurbished) values("]", 400, "Air Fryer", 200, FALSE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 300, "Kindle", 10, TRUE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 2000, "PS4", 100, FALSE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 5000, "PS5", 600, FALSE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 1000, "Celular", 20, TRUE);
insert into tb_products(name, price, description, discount, refurbished) values("tv", 6000, "TV Led", 20, FALSE);


-- Show Data 
select * from tb_products where price > 500;
select * from tb_products where price < 500;

-- Edit Data
update tb_workers set price = 5000 where id = 5;
