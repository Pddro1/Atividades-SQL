create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

create table tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,
    
    foreign key(categoria_id) references tb_categorias(id) 
);

select * from tb_categorias;

insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Brotinho", true);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Brotinho", false);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Médio", true);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Médio", false);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Grande", true);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Salgada", "Grande", false);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Doce", "Brotinho", true);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Doce", "Grande", false);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Vegetariana", "Brotinho", true);
insert into tb_categorias(descricao, tamanho, borda_recheada)
values("Vegana", "Brotinho", false);


select * from tb_pizzas;

insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Frango c/ Catupiry", 30.00, "Tradicional", 5, 1);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Mussarela", 40.59, "Tradicional", 5, 2);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Prestígio", 50.99, "Tradicional", 2, 8);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Lombo c/ Catupiry", 60.99, "Tradicional", 5, 6);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Brócolis c/ Catupiry", 40.00, "Tradicional", 5, 9);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
values("Calabresa", 45.99, "Tradicional", 5, 1);

select * from tb_pizzas where preco > 45.00 order by preco desc;

select * from tb_pizzas where preco >=50 and preco <=100;

select * from tb_pizzas where preco between 50 and 100 order by preco desc;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id where descricao ="doce";

update tb_pizzas set quantidade=2 where id=1;
update tb_pizzas set quantidade=1 where id=2;