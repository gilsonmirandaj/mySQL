create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
fresco boolean not null,
tipo varchar(255) not null,
pagamento varchar(255) not null,
primary key(id)
);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco int not null,
associado_mercado boolean not null,
entrega boolean,
produto_id bigint,
primary key(id),
FOREIGN KEY(produto_id) REFERENCES tb_categoria(id)
);


INSERT INTO tb_categoria(fresco, tipo, pagamento) VALUES (TRUE, "Vegetal", TRUE);
INSERT INTO tb_categoria(fresco, tipo, pagamento) VALUES (TRUE, "Legume", TRUE);
INSERT INTO tb_categoria(fresco, tipo, pagamento) VALUES (FALSE, "Condimento", TRUE);

INSERT INTO tb_produto(nome, preco, associado_mercado, entrega, produto_id) VALUES ("Alface", 10, TRUE, FALSE, 1);
INSERT INTO tb_produto(nome, preco, associado_mercado, entrega, produto_id) VALUES ("Beterraba", 51, FALSE, TRUE, 2);
INSERT INTO tb_produto(nome, preco, associado_mercado, entrega, produto_id) VALUES ("Maionese", 5, TRUE, FALSE, 3);

select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 AND 60;
select * from tb_produto where nome like 'c%';

SELECT tb_categoria.id, tb_produto.nome
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id;

select * from tb_produto where produto_id = 2;







