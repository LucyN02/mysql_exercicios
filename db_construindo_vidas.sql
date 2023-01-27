create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias (
	id int(5) not null auto_increment,
	categoria varchar(30) not null, 
	descricao varchar(100),
	primary key(id)
);

create table tb_produtos(
	id int(5) not null auto_increment,
    nome varchar(50) not null,
    valor decimal(4,2) not null,
    marca varchar(50),
    categoria_id int(5),
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias(categoria, descricao) values 
("material elétrico",""),
("material hidraulico",""),
("material de revestimento",""),
("material de sustentação",""),
("material de vedação","")
;

insert into tb_produtos(nome, valor, marca, categoria_id) 
values ("cimento",50.00,"++construção",5),
("janela",95.00,"materiaisMais",5),
("lampada",25.00,"luminar",1),
("torneira",30.00,"plastic",2),
("chuveiro",90.00,"plastic",2),
("tijolo",20.00,"construc++",5),
("tinta",90.00,"colorindo",3),
("porta",99.00,"madeiraMadeira",5);

select * from tb_produtos where valor < 50;
select * from tb_produtos where valor between 50 and 100;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos inner join tb_categorias on categoria_id = tb_categorias.id where categoria_id = 5;