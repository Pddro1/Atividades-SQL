create database db_e_commerce;

use db_e_commerce;

create table tb_produtos(
	id bigint auto_increment primary key,
    produto varchar(255),
    qtnd int,
    tipo varchar(255),
    preco decimal(8,2)
);

select * from tb_produtos;

insert into tb_produtos(produto, qtnd, tipo, preco)values("Fios de Cobre", 3000, "Eletrônico", 15.00);

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;

update tb_produtos set preco=4320.00 where id=6;