create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
nome_categoria varchar(255) not null,
estoque int,
ativo boolean,
primary key (id)
);

insert into tb_categorias (nome_categoria, estoque, ativo)
values ("Higiene e Beleza", 350, true);
insert into tb_categorias (nome_categoria, estoque, ativo)
values ("Fitness e Nutrição", 732, false);
insert into tb_categorias (nome_categoria, estoque, ativo)
values ("Medicamentos e Saúde", 354, true);
insert into tb_categorias (nome_categoria, estoque, ativo)
values ("Conveniência", 235, false);
insert into tb_categorias (nome_categoria, estoque, ativo)
values ("Mamães e Bebês", 345, true);

create table tb_produtos(
id bigint auto_increment,
nome_produto varchar(255) not null,
formato varchar(255) not null,
valor decimal(10,2),
tb_categorias_id bigint,
primary key (id),
foreign key (tb_categorias_id) references tb_categorias (id)
);

insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Adoçante Finn Xilitol", "Original", 15.31, 4);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Sabonete Lux Botanicals", "Original", 1.99, 1);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Gel Dental Bitufo Cocoricó", "Original", 6.47, 5);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Melatonina Premium", "Manipulado", 99.00, 2);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Pantoprazol 40mg ", "Genérico", 16.45, 3);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Lansoprazol 30mg", "Genérico", 57.55, 3);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("Fio Dental Sanifill 100m", "Original", 5.03, 1);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("100% Pure Whey Probiotica", "Original", 5.10, 2);
insert into tb_produtos (nome_produto, formato, valor, tb_categorias_id)
values ("C100% Pure", "Original", 5.13, 2);

select * from tb_categorias;
select * from tb_produtos;
select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor > 3.00 AND valor < 60.00;
select * from tb_produtos where nome_produto like "C%";
select * from tb_produtos inner join tb_categorias;
select * from tb_produtos inner join tb_categorias
on tb_produtos.tb_categorias_id = tb_categorias.id where tb_categorias_id = 3;
