-- Create DataBase

create database db_Exercise1;

-- Create Table

use db_Exercise1;

create table tb_workersHR(
id bigint auto_increment,
name varchar(255) not null,
salary decimal not null,
primary key(id)
);

-- Insert Data
insert into tb_workers(name, salary) values("gilson", 500);
insert into tb_workers(name, salary) values("Ana", 500);

-- Show Data 
select * from tb_workers where salary > 2000;
select * from tb_workers where salary < 2000;

-- Edit Data
update tb_workers set salary = 5000 where id = 3;
