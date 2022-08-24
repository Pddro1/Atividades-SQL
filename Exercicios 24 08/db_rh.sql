create database db_rh;

use db_rh;

create table tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    cpf varchar(255),
    salario decimal(8,2)
);

select * from tb_colaboradores;

insert into tb_colaboradores(nome, data_nascimento, cpf, salario)values("Kaisa Oliveira", "2002-12-13", "076.177.546-48", 2456.00);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000.00;

select * from tb_colaboradores where salario < 2000.00;

