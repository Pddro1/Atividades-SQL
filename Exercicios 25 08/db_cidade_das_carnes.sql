create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
	id bigint auto_increment primary key,
    descricao varchar(255),
    peso varchar(255)
);

create table tb_produtos(
	id bigint auto_increment primary key,
    corte varchar(255),
    valor decimal(6,2),
    quantidade int,
    categoria_id bigint,
    foreign key(categoria_id) references tb_categorias(id)    
);

select * from tb_categorias;

insert into tb_categorias(descricao, peso)
values("Derivados", "400 Gramas");
insert into tb_categorias(descricao, peso)
values("Vaca", "2 KG");
insert into tb_categorias(descricao, peso)
values("Porco", "1 KG");
insert into tb_categorias(descricao, peso)
values("Boi", "1.5 KG");
insert into tb_categorias(descricao, peso)
values("Frango", "1 KG");

select * from tb_produtos;

insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Asa de Frango", 16.98, 12, 5);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Queijo Coalho", 25.48, 15, 1);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Linguiça Toscana", 27.98, 5, 3);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Baby Picanha", 187.89, 2, 4);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Picanha Prata", 216.98, 3, 2);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Pão de Alho ", 33.67, 2, 1);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Linguiça Suina", 45.76, 2, 3);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Coxa de Frango", 41.88, 3, 5);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("File de Frango", 54.76, 4, 5);
insert into tb_produtos(corte, valor, quantidade, categoria_id)
values("Espetinho Suino", 64.45, 3, 3);

select * from tb_produtos where valor >50;

select * from tb_produtos where valor between 50 and 150;

select * from tb_produtos where corte like "%c%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id where descricao = "Frango";
