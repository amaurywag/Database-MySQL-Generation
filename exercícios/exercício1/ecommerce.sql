create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
estoque int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome, descricao, estoque, preco)
value ("Lâmpada", "Smart Lâmpada LED", 20, 57.90);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Teclado UBS", "Teclado UBS com LED", 34, 199.89);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Televisão", "Smart TV LED 43 Full HD", 12, 1789.00);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Echo Dot", "Echo Studio Smart Alexa", 3, 664.05);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Sansung Galaxy", "Smartphone Sansung A03", 9, 647.10);

insert into tb_produtos (nome, descricao, estoque, preco)
value ("Ventilador", "Ventilaor Mondial Super Power", 7, 89.00);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Rádio Portátil", "Mondial Boom Box NBX-13", 56, 249.00);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Projetor LED", "FUll HD T6 4K 3500 Lumens", 2, 799.00);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Aparador de Pelos", "Mondial Super Groom", 82, 94.89);
insert into tb_produtos (nome, descricao, estoque, preco)
value ("Aspirador de Pó", "Vertical 2 em 1 Monial Turbo", 6, 152.99);

select * from tb_produtos;
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set nome = "Lâmpada SMART" where id = 1;

delete from tb_produtos where id = 8;




alter table tb_produtos modify preco decimal (8,2);