create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
generico boolean not null,
desconto boolean not null,
primary key(id)
);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco int not null,
associado_farmacia boolean not null,
entrega boolean,
produto_id bigint,
primary key(id),
FOREIGN KEY(produto_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, generico, desconto) VALUES ("Medicamento", TRUE, FALSE);
INSERT INTO tb_categoria(tipo, generico, desconto) VALUES ("Medicamento", FALSE, TRUE);
INSERT INTO tb_categoria(tipo, generico, desconto) VALUES ("Cosmético", FALSE, TRUE);
INSERT INTO tb_categoria(tipo, generico, desconto) VALUES ("Cosmético", FALSE, FALSE);
INSERT INTO tb_categoria(tipo, generico, desconto) VALUES ("Teste covid", FALSE, FALSE);

INSERT INTO tb_produto(nome, preco, associado_farmacia, entrega, produto_id) VALUES ("Dramin b6", 10, TRUE, TRUE, 1);
INSERT INTO tb_produto(nome, preco, associado_farmacia, entrega, produto_id) VALUES ("Batom vermelho", 20, FALSE, FALSE, 3);
INSERT INTO tb_produto(nome, preco, associado_farmacia, entrega, produto_id) VALUES ("Teste Covid", 90, TRUE, TRUE, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 AND 60;
select * from tb_produto where nome like 'b%';

SELECT tb_categoria.id, tb_produto.nome
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id;

select * from tb_produto where produto_id = 3 or produto_id = 4;
