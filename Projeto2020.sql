drop database if exists Projeto;
create database if not exists Projeto;
use Projeto;

## select * from usuario;
## insert into usuario values(2, "adm", "123", "123", "123", 123, "123", "adm@test.com", "1234", true);
create table if not exists usuario(
	ID int auto_increment,
    nome varchar(45) not null,
    CPF varchar(15) not null,
    cep varchar(15) not null,
    endereco varchar(45) not null,
    numero int not null,
    telefone varchar(15),
    email varchar(45) not null,
    senha varchar(45) not null,
    ADM boolean not null,
    primary key(ID)
);

## insert into produto(nome, categoria, descricao, preco, vendidos, fk_idUsuario) values("TestProduto", "test", "Só um teste de produto", 55, 1, 2);
## select * from produto;
create table if not exists produto(
	ID int auto_increment,
    nome varchar(45) not null,
    categoria varchar(25) not null,
    descricao varchar(75),
    preco double not null,
    vendidos int,
    fk_idUsuario int not null,
    primary key(ID),
    constraint produto_usuario foreign key(fk_idUsuario) references usuario(ID) on delete cascade on update no action
);

create table if not exists historico(
	ID_usuario int not null,
    ID_produto int not null,
    quantidade int not null,
    dataCompra varchar(6) not null,
    primary key(ID_usuario, ID_produto),
    constraint historico_usuario foreign key(ID_usuario) references usuario(ID) on delete no action on update no action,
    constraint historico_produto foreign key(ID_produto) references produto(ID) on delete no action on update no action
);

create table if not exists favoritos(
    ID_usuario int,
    ID_produto int,
    link varchar(75),
    primary key(ID_usuario, ID_produto),
    constraint favorito_usuario foreign key(ID_usuario) references usuario(ID) on delete cascade on update no action,
    constraint favorito_produto foreign key(ID_produto) references produto(ID) on delete no action on update no action
)