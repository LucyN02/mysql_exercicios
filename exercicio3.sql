create database exercicio3;
use exercicio3;

create table estudantes(
	id int(5) not null auto_increment,
    nome varchar(100) not null,
    serie varchar (1) not null,
    turma varchar(1) not null,
    nota decimal(2,1) not null,
    primary key(id)
);

insert into estudantes(nome, serie, turma, nota) values (
	"Ana",
    "3",
    "A",
    9.5
);

insert into estudantes(nome, serie, turma, nota) values(
	"Maria",
    "3",
    "A",
    6.0
);

insert into estudantes(nome, serie, turma, nota) values(
	"Carlos",
    "2",
    "A",
    8.0
);

insert into estudantes(nome, serie, turma, nota) values(
	"Fernando",
    "3",
    "A",
    4.0
);

insert into estudantes(nome, serie, turma, nota) values(
	"Carol",
    "2",
    "A",
    5.0
);

insert into estudantes(nome, serie, turma, nota) values(
	"Maiara",
    "2",
    "A",
    7.5
);

insert into estudantes(nome, serie, turma, nota) values(
	"Bruno",
    "3",
    "A",
    7.5
);

insert into estudantes(nome, serie, turma, nota) values(
	"Jessica",
    "3",
    "A",
    3.0
);

select * from estudantes where nota > 7;
select * from estudantes where nota < 7;

update estudantes set nota = 6.0 where id=8;