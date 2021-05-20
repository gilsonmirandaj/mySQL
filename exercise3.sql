-- Create DataBase

create database db_Exercise3;

-- Create Table

use db_Exercise3;

create table tb_students(
id bigint auto_increment,
name varchar(255) not null,
age int not null,
generalGrade int not null,
schoolYear int not null,
repeater boolean not null,

primary key(id)
);

-- Insert Data
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Ana", 6, 5, 7, FALSE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Leandro", 6, 5, 7, TRUE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Marcelo", 6, 5, 7, FALSE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Victor", 2, 8, 7, TRUE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Anna", 3, 10, 7, TRUE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Alessandro", 13, 1, 7, FALSE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Ana", 12, 2, 7, TRUE);
insert into tb_students(name, age, generalGrade, schoolYear, repeater) values("Ana", 14, 9, 7, FALSE);

-- Show Data 
select * from tb_students where generalGrade > 7;
select * from tb_students where generalGrade < 7;

-- Edit Data
update tb_workers set reptb_studentseater = FALSE where id = 4;
