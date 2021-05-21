create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
pagamento varchar(255) not null,
presencial boolean not null,
primary key(id)
);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco int not null,
desconto boolean not null,
duracaomeses int not null,
produto_id bigint,
primary key(id),
FOREIGN KEY(produto_id) REFERENCES tb_categoria(id)
);


INSERT INTO tb_categoria(tipo, pagamento, presencial) VALUES ("Humanidades", TRUE, FALSE);
INSERT INTO tb_categoria(tipo, pagamento, presencial) VALUES ("Exatas", TRUE, TRUE);
INSERT INTO tb_categoria(tipo, pagamento, presencial) VALUES ("Biológicas", TRUE, FALSE);

INSERT INTO tb_produto(nome, preco, desconto, duracaomeses, produto_id) VALUES ("Curso de geografia", 800, TRUE, 4, 1);
INSERT INTO tb_produto(nome, preco, desconto, duracaomeses, produto_id) VALUES ("Curso de matemática", 1000, TRUE, 6, 2);
INSERT INTO tb_produto(nome, preco, desconto, duracaomeses, produto_id) VALUES ("Curso de biologia", 700, FALSE, 8, 3);


select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 AND 60;
select * from tb_produto where nome like 'J%';

SELECT tb_categoria.id, tb_produto.nome
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id;

select * from tb_produto where produto_id = 1;







