create database online_game;


use online_game;

create table tb_classe (
id bigint auto_increment,
name varchar(255) not null,
elements varchar(255) not null,
primary key(id)
);

INSERT INTO tb_classe(name, elements) VALUES ("Wizard", "Magic and Fire");
INSERT INTO tb_classe(name, elements) VALUES ("Ranger", "Agility and wind");
INSERT INTO tb_classe(name, elements) VALUES ("Sacer", "Intelligence and ice");
INSERT INTO tb_classe(name, elements) VALUES ("Knight", "Strengh and Fire");
INSERT INTO tb_classe(name, elements) VALUES ("Thief", "Agility and water");


select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
charactername varchar(255) not null,
characterLevel int not null,
attack int not null,
defense int not null,
classe_id bigint,
serverFree boolean,
primary key(id),
FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);



INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ( "Mister M", 40, 4, 10, 2, TRUE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("Tiro Certo", 40, 1, 2, 3, TRUE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("Quilingue", 73, 3000, 600, 4, FALSE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("Rasputin", 40, 2000, "300", 1, TRUE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("SemNome", 10, 259, 20, 2, FALSE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("MotherNature", 80, 2500, 2500, 2, TRUE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("Com Nome", 40, 2000, 3000, 4, FALSE);
INSERT INTO tb_personagem (charactername, characterLevel, attack, defense, classe_id, serverFree) VALUES ("Caramba", 15, 500, 25, 5, FALSE);

select * from tb_personagem;


select * from tb_personagem where attack > 2000;
select * from tb_personagem where defense BETWEEN 1000 AND 2000;
select * from tb_personagem where characterName like 'c%';

SELECT tb_classe.id, tb_personagem.charactername
FROM tb_classe
INNER JOIN tb_personagem ON tb_classe.id = tb_personagem.id;

select * from tb_personagem where classe_id = 2;







