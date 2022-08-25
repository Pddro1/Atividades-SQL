create database db_farmacia;

use db_farmacia;

create table tb_categorias(
	id bigint auto_increment primary key,
    tipo varchar(255),
    descricao varchar(255)
);

create table tb_produtos(
	id bigint auto_increment primary key,
	nome varchar(255),
    origem varchar(255),
    valor decimal (6,2),
	categoria_id bigint,
    foreign key(categoria_id) references tb_categorias (id) 
);

select * from tb_categorias;

insert into tb_categorias(tipo, descricao)
values("Pomada", "Medicina");
insert into tb_categorias(tipo, descricao)
values("Gel", "Cosmético");
insert into tb_categorias(tipo, descricao)
values("Esmalte", "Cosmético");
insert into tb_categorias(tipo, descricao)
values("Algodão", "Medicina");
insert into tb_categorias(tipo, descricao)
values("Cílios", "Cosmético");
insert into tb_categorias(tipo, descricao)
values("Rémedios", "Medicina");

select * from tb_produtos;

insert into tb_produtos(nome, origem, valor, categoria_id)
values("Pomada para Assadura", "China", 30.99, 1);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Pomada para Cabelo", "EUA", 29.80, 2);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Fralda Tam:G", "EUA", 104.98, 4);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Victoria Secrets", "EUA", 89.90, 3);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Risqué", "EUA", 5.60, 3);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Base", "Brasil", 3.40, 3);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Fralda Tam:P", "EUA", 70.99, 4);
insert into tb_produtos(nome, origem, valor, categoria_id)
values("Shampoo", "Tailandia", 20.56, 2);

select * from tb_produtos where valor >= 50;

select * from tb_produtos where valor between 5 and 60 order by valor asc;

select * from tb_produtos where nome like "%c%" order by valor desc;

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id where descricao = "Medicina";