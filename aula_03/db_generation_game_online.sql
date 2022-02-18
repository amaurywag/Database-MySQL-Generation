-- Criando banco de dados:
create database db_generation_game_online;

-- Colocando o banco de dados em uso:
use db_generation_game_online;

-- Criando tabela 1:
create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
arma varchar(255) not null,
primary key (id)
);

-- Criando tabela 2:
create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

-- Adicionando coluna na tabela:
alter table tb_personagens ADD nivel int after nome;

-- Inserindo dados nas lacunas da tabela 1:
insert into tb_classe (nome, habilidade, arma)
value ("Feiticeiro", "Bola de fogo", "Cajado");
insert into tb_classe (nome, habilidade, arma)
value ("Arqueiro", "Flecha sangrenta", "Arco");
insert into tb_classe (nome, habilidade, arma)
value ("Ladino", "Golpes rápidos x4", "Adaga");

-- Inserindo dados nas lacunas da tabela 2:

insert into tb_personagens (nome, ataque, defesa, classe_id)
value ("Adum", 2000, 3000, 1);
insert into tb_personagens (nome, ataque, defesa, classe_id)
value ("Achlhoias", 51000, 3000, 2);
insert into tb_personagens (nome, ataque, defesa, classe_id)
value ("Bemera", 1500, 700, 1);
insert into tb_personagens (nome, ataque, defesa, classe_id)
value ("Nacrom_1", 1000, 300, 3);
insert into tb_personagens (nome, ataque, defesa, classe_id)
value ("Capiton", 2000, 3000, 2);

-- Alterando os valores das lacunas da tabela:
update tb_personagens set nivel = 51 where id = 1;
update tb_personagens set nivel = 10 where id = 5;
update tb_personagens set nivel = 58 where id = 6;
update tb_personagens set nivel = 91 where id = 7;
update tb_personagens set defesa = 1500 where id = 6;

-- Visualizações das tabelas:
select * from tb_personagens;
select * from tb_classe;
select * from tb_personagens where ataque < 2000;
select * from tb_personagens where defesa > 1000 AND defesa < 2000;
select * from tb_personagens where nome like "C%";

select * from tb_personagens inner join tb_classe
on tb_personagens.classe_id = tb_classe.id;

select * from tb_personagens inner join tb_classe
on tb_personagens.classe_id = tb_classe.id where classe_id = 2;

