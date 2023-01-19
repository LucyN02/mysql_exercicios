create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id bigint(5) not null auto_increment,
    nome varchar(20) not null,
    tipo varchar(20) not null,
    elemento varchar(20) not null,
    primary key(id)
);

alter table tb_classes drop elemento;
alter table tb_classes add arma varchar(25);
alter table tb_classes change arma descricao varchar(100);

insert into tb_classes(nome, descricao) values(
	"arqueiro",
    "usa arco e tem seu ataque é a distância"
);

insert into tb_classes(nome, descricao) values(
	"alquimista",
    "especialista em alquimia e usa isso ao seu favor para lutas"
);

insert into tb_classes(nome, descricao) values(
	"mago",
    "são capazes de controlar os elementos para usá-los de forma ofensiva ou defensiva. "
);

insert into tb_classes(nome, descricao) values(
	"guerreiro",
    "combate corporal com espadas, lanças, machados, maças e escudos"
);

insert into tb_classes(nome, descricao) values(
	"curador",
    "classes de suporte cujas habilidades são voltadas para o grupo como curas"
);


create table tb_personagens(
	id bigint(10) not null auto_increment,
    nome varchar(50) not null,
    defesa int(4) not null,
    ataque int(5) not null,
    classes_id bigint,
    primary key(id),
    foreign key(classes_id) references tb_classes(id)
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Amy",
    "500",
    "1310",
    3
);

DELETE FROM tb_personagens where id=2;

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Robie",
    "550",
    "1490",
    4
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Prisma",
    "350",
    "1500",
    2
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Dory",
    "350",
    "980",
    5
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Mary",
    "600",
    "980",
    5
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Cassio",
    "600",
    "1499",
    1
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Cosmos",
    "590",
    "1450",
    3
);

insert into tb_personagens(nome, defesa, ataque, classes_id) values(
	"Gabel",
    "503",
    "1100",
    5
);

select * from tb_personagens where ataque >= 2000;
select * from tb_personagens where defesa >= 1000 and defesa <= 2000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id ORDER BY tb_personagens.nome;
select tb_personagens.nome, defesa, ataque, tb_classes.nome, tb_classes.descricao from tb_personagens 
	inner join tb_classes on tb_personagens.classes_id = tb_classes.id 
	 where tb_personagens.classes_id = 5;



