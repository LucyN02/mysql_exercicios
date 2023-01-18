create database exercicio2;

use exercicio2;
create table produtos(
	id int(5) not null auto_increment,
    nome varchar(20) not null,
    valor decimal(8,2) not null,
    marca varchar(20) not null,
    categoria varchar(20) not null,
    primary key(id)
);

insert into produtos(nome, valor, marca, categoria) values (
	'notebook',
    '2999.99',
    'acer',
    'informática'
);

insert into produtos(nome, valor, marca, categoria) values(
	'mousepad',
    '150.00',
    'logitech',
    'informática'
);

insert into produtos(nome, valor, marca, categoria) values(
	'caixa de chocolate',
    '9.99',
    'nestlé',
    'alimentos'
);

insert into produtos(nome, valor, marca, categoria) values(
	'pneu',
    '550.59',
    'Continental',
    'automovel'
);

insert into produtos(nome, valor, marca, categoria) values(
	'TV',
    '3000.00',
    'Samsung',
    'Televisão'
);

insert into produtos(nome, valor, marca, categoria) values(
	'Lençol',
    '49.99',
    'Santista',
    'Enxoval'
);

insert into produtos(nome, valor, marca, categoria) values(
	'Toalha',
    '39.99',
    'Santista',
    'Enxoval'
);

insert into produtos(nome, valor, marca, categoria) values(
	'Guarda-roupa',
    '799.90',
    'MadeiraMadeira',
    'Casa'
);

select * from produtos where valor > 500.00;
select * from produtos where valor < 500.00;

update produtos set nome = "Lençol" where id=7;
