create database db_rpg;

use db_rpg;

create table tb_classes(
	id bigint auto_increment primary key,
    classe varchar(255),
    arma varchar(255)
);

create table tb_personagens(
	id bigint auto_increment primary key,
    nome_perso varchar(255),
	lvl int,
    poder decimal(6,2),
    defesa decimal(6,2),
    class_id bigint,
    foreign key(class_id) references tb_classes(id)
);



select * from tb_classes;

insert into tb_classes(classe, arma)
values("Guerreiro", "Machado Duplo");
insert into tb_classes(classe, arma)
values("Druida", "Bastão Mágico");
insert into tb_classes(classe, arma)
values("Mago", "Grimorio");
insert into tb_classes(classe, arma)
values("Ladino", "Adagas");
insert into tb_classes(classe, arma)
values("Bruxo", "Cristal");

select * from tb_personagens;

insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Aurelion das Arvores", 3, 1540, 3220, 2);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Aldebaran", 5, 2760, 2500, 1);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Geninha Fahrer", 4, 2300, 1765, 3);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Pendragon Carmon", 3, 2510, 1202, 4);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("MuscoMin", 3, 1973, 2225, 5);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Laginhur", 7, 4512, 3091, 1);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Brujas", 6, 2003, 2430, 5);
insert into tb_personagens(nome_perso, lvl, poder, defesa, class_id)
values("Manca Marcine", 3, 1843, 2012, 3);

select * from tb_personagens where poder > 2000 order by poder asc;

select * from tb_personagens where defesa < 2000 order by defesa asc;

select * from tb_personagens where nome_perso like "%c%" order by defesa asc;

select nome_perso, lvl, poder, defesa from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.class_id where classe = "Guerreiro" order by poder desc;
