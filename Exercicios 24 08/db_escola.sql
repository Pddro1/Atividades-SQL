create database db_escola_generation;

use db_escola_generation;

create table tb_alunes(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

select * from tb_alunes;

insert into tb_alunes(nome,data_nascimento,turma,nota)values("Pedro Henrique", "2001-12-15", 57, 7.0);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("João Vitor", "2003-08-21", 57, 7.2);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Alberto Santos", "1996-05-25", 57, 8.0);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Paula Oliveira", "1992-10-05", 57, 7.9);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Maria Vargas", "1991-01-01", 57, 5.6);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Pedro Paulo", "1994-11-25", 57, 6.9);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Afonso Murilo", "2001-12-25", 57, 8.9);
insert into tb_alunes(nome,data_nascimento,turma,nota)values("Amanda Nascimento", "2002-02-03", 57, 10.0);

select * from tb_alunes;

select * from tb_alunes where nota >=7;

select * from tb_alunes where nota <7;

update tb_alunes set nota=6 where id=3; 