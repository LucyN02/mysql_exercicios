create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id int(5) not null auto_increment,
    categoria varchar(20) not null,
    tipo_de_pizza varchar(20) not null,
    primary key(id)
);

create table tb_pizzas(
	id int(5) not null auto_increment,
    sabor varchar(50) not null,
    valor decimal(4,2) not null,
    tamanho varchar(30) not null,
    categoria_id int(5),
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias (categoria, tipo_de_pizza) values 
("doce", "napolitana"), 
("doce", "frita"),
("salgada", "napolitana"), 
("salgada", "frita"), 
("salgada", "diet"), 
("vegetariana","napolitana");

insert into tb_pizzas (sabor, valor, tamanho, categoria_id) values
("pepperoni", 25.00, "pequena", 3),
("cogumelos", 22.00, "pequena", 6),
("calabresa", 12.00, "pequena", 4),
("portuguesa", 62.00, "extra grande", 3),
("nordestina", 47.00, "média", 3),
("abacaxi", 25.00, "pequena", 1),
("nutella",25.00,"pequena",1),
("brigadeiro",25.00,"pequena",1)
;

select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor > 45.00 and valor < 100.00;
select * from tb_pizzas where sabor like "%m%";

select sabor, valor, tamanho, tb_categorias.categoria, tb_categorias.tipo_de_pizza from tb_pizzas 
inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id;

select sabor, valor, tamanho, tb_categorias.categoria, tb_categorias.tipo_de_pizza from tb_pizzas
inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where categoria like "%doce%";

