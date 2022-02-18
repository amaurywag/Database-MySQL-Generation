create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
modalidade varchar(255) not null, 
ativo boolean,
primary key (id)
);

insert into tb_categoria (modalidade, ativo)
values ("Presencial", true);
insert into tb_categoria (modalidade, ativo)
values ("EAD", true);
insert into tb_categoria (modalidade, ativo)
values ("Semipresencial", false);
insert into tb_categoria (modalidade, ativo)
values ("Curso livre - Online", true);
insert into tb_categoria (modalidade, ativo)
values ("Curso livre - Presencial", false);

create table tb_produto(
id bigint auto_increment,
curso varchar(255) not null,
carga_horaria int,
valor decimal (10,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Fundamentos de Java", 60, 560.00, 2);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Banco de Dados com MySQL", 120, 1200.00, 1);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Pyton para iniciantes", 40, 250.00, 5);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Desenvolvedor Front-end", 250, 2240.00, 1);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Git e GitHub", 20, 50.00, 4);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Lógica de Programação com JavaScript", 120, 2000.00, 3);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Prototipação com Adobe XD", 80, 550.00, 2);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Java OO - Avançado", 120, 4400.00, 1);
insert into tb_produto (curso, carga_horaria, valor, categoria_id)
values ("Conhecendo Java para Iniciantes", 10, 35.00, 1);

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor > 3.00 AND valor < 60.00;
select * from tb_produto where curso like "J%";
select * from tb_produto inner join tb_categoria;
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where categoria_id = 1;
