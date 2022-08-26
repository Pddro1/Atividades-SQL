create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment primary key,
    ferramenta varchar(255),
    material varchar(255)
);

create table tb_produtos(
	id bigint auto_increment primary key,
    descricao varchar(255),
    valor decimal(6,2),
    
);