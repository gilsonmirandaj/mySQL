create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
pagamento varchar(255) not null,
entrega boolean not null,
primary key(id)
);

INSERT INTO tb_categoria(tipo, pagamento, entrega) VALUES ("Ferramenta pequena", TRUE, FALSE);
INSERT INTO tb_categoria(tipo, pagamento, entrega) VALUES ("Material Atacado", TRUE, TRUE);
INSERT INTO tb_categoria(tipo, pagamento, entrega) VALUES ("Rolamentos", TRUE, FALSE);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco int not null,
associado_loja boolean not null,
entrega boolean,
produto_id bigint,
primary key(id),
FOREIGN KEY(produto_id) REFERENCES tb_categoria(id)
);


INSERT INTO tb_produto(nome, preco, associado_loja, entrega, produto_id) VALUES ("Alicate", 20, TRUE, FALSE, 1);
INSERT INTO tb_produto(nome, preco, associado_loja, entrega, produto_id) VALUES ("Cimento", 200, FALSE, TRUE, 2);
INSERT INTO tb_produto(nome, preco, associado_loja, entrega, produto_id) VALUES ("Correia", 30, TRUE, FALSE, 3);

select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 AND 60;
select * from tb_produto where nome like 'c%';

SELECT tb_categoria.id, tb_produto.nome
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id;

select * from tb_produto where produto_id = 1;







