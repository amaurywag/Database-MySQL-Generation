create database db_rh;
use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal,
tempo_na_empresa int,
primary key (id)
);

insert into tb_funcionaries (nome, cargo, salario, tempo_na_empresa)
values ("Amaury", "Desenvolvedor Java Jr", 1999.00, 1);
insert into tb_funcionaries (nome, cargo, salario, tempo_na_empresa)
values ("Jane", "Desenvolvedora Java Sênior", 12000.00, 4);
insert into tb_funcionaries (nome, cargo, salario, tempo_na_empresa)
values ("Rafael", "Desenvolvedor Java Pleno", 7800.00, 3);
insert into tb_funcionaries (nome, cargo, salario, tempo_na_empresa)
values ("Dione", "Desenvolvedore Java Sênior", 12000.00, 5);
insert into tb_funcionaries (nome, cargo, salario, tempo_na_empresa)
values ("Jéssica", "Desenvolvedora Java Jr", 2800.00, 1);

select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;

update tb_funcionaries set salario = 1999.00 where id = 1;
update tb_funcionaries set salario = 12000.00 where id = 4;
update tb_funcionaries set salario = 7800.00 where id = 5;
update tb_funcionaries set salario = 12000.00 where id = 6;
update tb_funcionaries set salario = 2800.00 where id = 7;

delete from tb_funcionaries where id = 2;
delete from tb_funcionaries where id = 3;
delete from tb_funcionaries where id = 8;
delete from tb_funcionaries where id = 10;

alter table tb_funcionaries modify salario decimal (8,2);