create database loja;

use loja;

create table cliente(
	cpf char (11) not null,
    nome varchar (60) not null,
    telefone varchar (15) not null,
    email varchar (30) not null,
    senha varchar (20) not null,
    primary key (cpf)
);

create table produto(
    nome_produto varchar (120) not null,
    imagem blob not null,
    tipo varchar (20) not null,
    quantidade integer not null,
    preco double not null,
    descricao varchar(1000) not null,
    primary key (nome_produto)
);

create table carrinho(
	id_carrinho integer not null auto_increment,
	nome_produto varchar (120) not null,
    preco_total double not null,
    quantidade integer not null,
    primary key (id_carrinho),
    foreign key (nome_produto) references produto (nome_produto)
); 

create table finalizar(
	id_finalizar integer not null auto_increment,
    nome_produto varchar (120) not null,
    preco double not null,
    preco_total double not null,
    quantidade integer not null,
	primary key (id_finalizar),
    foreign key (nome_produto) references produto (nome_produto)
);

create table contato(
	id_contato integer not null auto_increment,
    nome_cliente varchar (60) not null,
    mensagem varchar (120) not null,
    email varchar (30) not null,
    assunto varchar (120) not null,
    primary key(id_contato)
    
);

create table retirado(
	id_compra integer not null auto_increment,
    nome_cliente varchar (60) not null,
    cpf_cliente varchar(11) not null,
	data_compra date not null,
    hora time,
    total_pagar double not null,
    primary key(id_compra)
);