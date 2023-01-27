create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias (
	id int(5) not null auto_increment,
	categoria varchar(30) not null, 
	tipo_de_produto varchar(50),
	primary key(id)
);

create table tb_produtos(
	id int(5) not null auto_increment,
    nome varchar(50) not null,
    marca varchar(30) not null,
    valor decimal(4,2) not null,
    categoria_id int(5),
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias (categoria, tipo_de_produto) values (
	"remédio","remédio manipulado"),
    ("remédio","remédio genérico"),
    ("higiene","banho"),
	("higiene", null),
    ("cosmeticos","hidratante-corporal"),
	("cosmeticos","hidratante-facial"),
    ("comida", "chocolate");
    
insert into tb_produtos (nome, marca, valor, categoria_id) values
("shampoo", "dove", 15.00, 3),
("condicionador","dove", 15.00, 3),
("papel-higiênico", "pandaSol", 8.00, 4),
("dipirona","drogasil", 12.00, 2),
("itraconazol","pharma", 45.00,1),
("chocolate-amargo","nestlé",15.00,7),
("sabonete","even",3.00,3),
("dimeticona","plus",14.00,2)
;

select * from tb_produtos where valor < 10.00;
select * from tb_produtos where valor > 10.00 and valor < 15.00;
select * from tb_produtos where nome like "%c%";
select nome, marca, valor, tb_categorias.categoria, tb_categorias.tipo_de_produto from tb_produtos
inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id;

select nome, marca, valor, tb_categorias.categoria, tb_categorias.tipo_de_produto from tb_produtos
inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.id = 3;