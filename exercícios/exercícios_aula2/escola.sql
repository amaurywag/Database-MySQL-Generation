create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
sobrenome varchar(255) not null,
turma char(1),
nota_final int,
primary key (id)
);

insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Amaury Wagner", "Gomes Marques", "B", 8);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Jésica Karoline", "Gomes Marques", "C", 6);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Antônio Carlos", "Dias Pitelli", "A", 7);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Danillo", "Vieira da Silva", "B", 5);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Barbara", "Liberal dos Santos", "A", 9);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Bruno", "Marques da Silva", "C", 10);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Juliana", "Gomes Leão", "A", 10);
insert into tb_alunos (nome, sobrenome, turma, nota_final)
value ("Irana Cláudia", "dos Santos Ferreira", "A", 10);

select * from tb_alunos;

select * from tb_alunos where nota_final > 7;
select * from tb_alunos where nota_final < 7;

update tb_alunos set nota_final = 10 where id = 2;
