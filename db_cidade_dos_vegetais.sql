create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

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
    categoria_id int(5),
    importado boolean,
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias (categoria, descricao) values 
("verdura","na verdura a parte comestível se restringe às folhas, brotos, flores e hastes"),
("legume","no legume a parte comestível são os frutos, raízes e sementes."),
("erva","as ervas são muito úteis na culinária, no uso medicinal e também em outros campos"),
("fruta","apresenta sabor adocicado, aroma característico e, geralmente, é rico em suco."); 

insert into tb_produtos (nome, valor, categoria_id, importado) values 
("cebola",5.00,2,false),
("oregano",6.00,1,true),
("tomate",8.00,4,true),
("alface",3.00,1,false),
("banana",6.00,4,true),
("morango",12.00,4,true),
("coentro",3.00,1,false),
("pimentão",7.00,2,false);

select * from tb_produtos where valor < 10.00;
select * from tb_produtos where valor between 10.00 and 20.00;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos inner join tb_categorias on categoria_id = tb_categorias.id;
select * from tb_produtos inner join tb_categorias on categoria_id = tb_categorias.id where tb_categorias.categoria like "%fruta%";