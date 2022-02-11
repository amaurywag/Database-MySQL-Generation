-- Criando o banco de dados: db_quitanda
create database db_quitanda;
-- Criando a tabela dentro do banco de dados: 
use db_quitanda; 

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,	
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco)
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preco)
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco)
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco)
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade, preco)
values ("Cebola", 100, 1.50);

select * from tb_produtos;
select nome from tb_produtos;
select nome, preco from tb_produtos;
select * from tb_produtos where preco > 1.99;
select * from tb_produtos where preco > 5.99 or nome = "Banana";

update tb_produtos set preco = 1.99 where id = 2;

set SQL_SAFE_UPDATES = 0; -- Destravando para alterar;
update tb_produtos set descricao = "Banana de Ouro"; -- Adicionando descrição;

delete from tb_produtos where id = 3; -- Deletando linha/produto;

alter table tb_produtos modify preco decimal (8,2);
alter table tb_produtos add descricao varchar(255); -- Adicionando coluna.
alter table tb_produtos drop descricao; -- Apagando coluna