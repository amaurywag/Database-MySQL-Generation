create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
sub_categoria varchar (255) not null,
estado varchar(255) not null,
primary key (id)
);

insert into tb_categorias (categoria, sub_categoria, estado)
values ("Frango", "Peito", "Congelado");
insert into tb_categorias (categoria, sub_categoria, estado)
values ("Porco", "Bifes", "Resfriado");
insert into tb_categorias (categoria, sub_categoria, estado)
values ("Boi", "Moído", "Congelado");
insert into tb_categorias (categoria, sub_categoria, estado)
values ("Frango", "Asa", "Congelado");
insert into tb_categorias (categoria, sub_categoria, estado)
values ("Porco", "Linguiças", "Resfriado");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
peso decimal (10,2) not null,
valor decimal (10,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Coxinha da Sala no Shoyu", 1.000, 22.90, 4);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Salsichão Tradicional Avivar", 500, 9.90, 5);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Linguiça Caseira Fina Condimentada", 600, 21.90, 5);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Almôndega Artesanal", 500, 38.90, 3);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Copa Lombo No Barbecue", 800, 31.90, 2);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Filé De Peito Nat", 1.000, 22.90, 1);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Espetinho De Medalhão", 775, 29.90, 1);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Lombo Suíno Temperado - Tiras", 1.000, 27.90, 2);
insert into tb_produtos (nome, peso, valor, categoria_id)
values ("Lombo Suíno", 1.000, 56.00, 2);

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor > 3.00 AND valor < 60.00;
select * from tb_produtos where nome like "C%";
select * from tb_produtos inner join tb_categorias;
select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id where categoria_id = 1;

