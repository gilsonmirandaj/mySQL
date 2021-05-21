create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categoria(tamanho, tipo) VALUES ("Broto", "doce");
INSERT INTO tb_categoria(tamanho, tipo) VALUES ("Broto", "salgada");
INSERT INTO tb_categoria(tamanho, tipo) VALUES ("Média", "doce");
INSERT INTO tb_categoria(tamanho, tipo) VALUES ("Média", "salgada");
INSERT INTO tb_categoria(tamanho, tipo) VALUES ("Grande", "salgada");

select * from tb_categoria;


create table tb_pizza (
id bigint auto_increment,
sabor varchar(255) not null,
ingredientes varchar(255) not null,
preco int not null,
bebida boolean,
tipo_id bigint,
primary key(id),
FOREIGN KEY(tipo_id) REFERENCES tb_categoria(id)
);


INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Marguerita", "Molho, muzzarella, tomate e manjericão", 32, TRUE, 4);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Shimeji", "Shimeji branco, shimeji preto, azeitona e pimenta dedo de moça", 48, FALSE, 5);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Muzzarella", "Queito Muzzarella, tomate e azeitona", 32, FALSE,  2);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Portuguesa", "Ovos, cebola, azeitona, ervilha, queijo e presunto", 35.0, FALSE, 4);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Calabresa", "Calabresa, azeita e molho", 32, TRUE, 5);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Chocolate", "Chocolate, morango e uva", 35, TRUE, 1);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Torta de limão", "Mousse de limão e raspas de limão", 45, TRUE, 3);
INSERT INTO tb_pizza(sabor, ingredientes, preco, bebida, tipo_id) VALUES ("Marguerita", "Molho, muzzarella, tomate e manjericão", 32, TRUE, 4);



select * from tb_pizza;


select * from tb_pizza where preco > 40;
select * from tb_pizza where preco BETWEEN 29 AND 60;
select * from tb_pizza where sabor like 'c%';

SELECT tb_categoria.id, tb_pizza.sabor
FROM tb_categoria
INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.id;

select * from tb_pizza where tipo_id = 2 or tipo_id = 4;







