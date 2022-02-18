create database db_construindo_a_nossa_casa;
use db_construindo_a_nossa_casa;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
estoque int,
primary key (id)
);

insert into tb_categorias (categoria, estoque)
values ("Banheiros", 769);
insert into tb_categorias (categoria, estoque)
values ("Cozinha", 1182);
insert into tb_categorias (categoria, estoque)
values ("Iluminação", 837);
insert into tb_categorias (categoria, estoque)
values ("Portas e Janelas", 332);
insert into tb_categorias (categoria, estoque)
values ("Materiais de Construção", 23734);

create table tb_produtos(
id bigint auto_increment,
produto varchar(255) not null,
descricao varchar(255) not null,
valor decimal (10,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Acabamanto Mono Chuveiro Level", "Sua torneira mais linda", 462.90, 1);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Pendente L-1-C Colonial Sextavado ", "Sua sala mais elegante que nunca", 79.90, 3);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Poste P-18 Aço Fosfatizado Globo", "Estilo Europeu", 349.90, 3);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Folha de Porta Bella MDP ", "Porta Importada direto dos EUA", 399.90, 4);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Canaleta Cerâmica Linha", "Esconda os fios com mais cuidado e qualidade", 5.30, 5);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Argila Expandida 3222 50L", "Fixa bem em qualquer lugar", 25.79, 5);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Pia Aço Inox 430 com Cuba", "Aço de primeira qualidade, não risca", 184.90, 2);
insert into tb_produtos (produto, descricao, valor, categoria_id)
values ("Bacia Convencional Art", "Com uma nova tecnologia, deixe seu banheiro mais agradável", 234.90, 1);

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor > 3.00 AND valor < 60.00;
select * from tb_produtos where produto like "C%";
select * from tb_produtos inner join tb_categorias;
select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id where categoria_id = 3;
