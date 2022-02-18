create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Criando tabela 1:
create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo_da_massa varchar(255) not null,
primary key (id)
);

-- Adicionando coluna:
alter table tb_categoria ADD tipo_da_pizza varchar(255) not null after tamanho;

-- Populando tabela 1:
insert into tb_categoria (tamanho, tipo_da_pizza, tipo_da_massa)
value ("Grande", "Doce", "Fina");
insert into tb_categoria (tamanho, tipo_da_pizza, tipo_da_massa)
value ("Média", "Salgada", "Grossa");
insert into tb_categoria (tamanho, tipo_da_pizza, tipo_da_massa)
value ("Pequena", "Meio Doce-Salgada", "Grossa");
insert into tb_categoria (tamanho, tipo_da_pizza, tipo_da_massa)
value ("Média", "Doce", "Grossa");
insert into tb_categoria (tamanho, tipo_da_pizza, tipo_da_massa)
value ("Pequena", "Doce", "Fina");

-- Criando tabela 2:
create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
tipo_da_massa varchar(255) not null,
preco decimal(10,2),
tb_categoria_id bigint,
primary key (id),
foreign key (tb_categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Calabresa", 29.00, 2);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Marguerita", 20.00, 2);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Calabresa e Chocolate", 50.00, 3);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Frango com Catupiry", 60.00, 2);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Romeu e Julieta", 60.00, 4);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Brigadeiro", 49.00, 5);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Chocolate Branco", 40.00, 5);
insert into tb_pizza (sabor, preco, tb_categoria_id)
value ("Peperoni", 59.00, 2);

alter table tb_pizza drop column tipo_da_massa;

select * from tb_pizza;
select * from tb_categoria;
select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco > 29.00 AND preco < 60.00;
select * from tb_pizza where sabor like "C%";
select * from tb_pizza inner join tb_categoria;
select * from tb_pizza inner join tb_categoria
on tb_pizza.tb_categoria_id = tb_categoria.id where tb_categoria_id = 4;
select * from tb_pizza inner join tb_categoria
on tb_pizza.tb_categoria_id = tb_categoria.id where tipo_da_pizza = "Doce";

