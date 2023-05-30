create database Treinamento;

use Treinamento;

create table mvtBibAutor(
	codAutor int identity primary key,
	nomeAutor varchar(50) not null,
	descricao varchar(1000)
);

create table mvtBibEditora(
	codEditora int identity primary key,
	nomeEditora varchar(50) not null
);

insert into mvtBibEditora(nomeEditora) values('Universal Pictures');
select * from mvtBibEditora;

create table mvtBibLocal(
	codLocal int identity primary key,
	descricaoLocal varchar(50) not null
);

insert into mvtBibLocal(descricaoLocal) values('Corredor 4');
select * from mvtBibLocal;

create table mvtBibSecao(
	codSecao int identity primary key,
	descricaoSecao varchar(50) not null
);

insert into mvtBibSecao(descricaoSecao) values('Pesquisa');
select * from mvtBibSecao;

create table mvtBibItemAcervo(
	codItem int identity primary key,
	codLocal int not null,
	numExemplar int not null,
	nome varchar(200) not null,
	codAutor int not null,
	nomeAutor varchar(50) not null,
	codEditora int not null,
	nomeEditora varchar(50) not null,
	tipoItem varchar(50) not null,
	nomeLocal varchar(50) not null,
	volume int,
	anoEdicao int,
	localizacao varchar(50) not null,
	codSecao int not null,
	secao varchar(50),
	nomeColecao varchar(50),
	statusItem varchar(50),
	foreign key(codLocal) references mvtBibLocal(codLocal),
	foreign key(codAutor) references mvtBibAutor(codAutor),
	foreign key(codEditora) references mvtBibEditora(codEditora),
	foreign key(codSecao) references mvtBibSecao(codSecao)
);

select * from mvtBibItemAcervo;

create table mvtBibLeitor(
	codLeitor int identity primary key,
	nomeLeitor varchar(200) not null,
	sexo varchar(1) not null,
	dataNascimento datetime not null,
	cpf varchar(14),
	rg varchar(12),
	email varchar(200),
	telefone varchar(14),
	telefoneCelular varchar(14),
	endereco varchar(200) not null,
	enderecoBairro varchar(100) not null,
	enderecoCidade varchar(100) not null,
	enderecoCep varchar(9),
	enderecoUf varchar(2) not null,
	enderecoNumero varchar(10)
);

select * from mvtBibLeitor;

create table mvtBibReserva(
	codReserva int identity primary key,
	codItem int not null,
	statusItem varchar(50) not null,
	nomeItem varchar(200) not null,
	numExemplar int not null,
	tipoItem varchar(50) not null,
	localizacao varchar(50) not null,
	codLeitor int not null,
	nomeLeitor varchar(200) not null,
	dataReserva datetime not null,
	prazoReserva datetime not null,
	tipoMovimento varchar(50),
	foreign key(codItem) references mvtBibItemAcervo(codItem),
	foreign key(codLeitor) references mvtBibLeitor(codLeitor)
);

select * from mvtBibItemAcervo;

drop table mvtBibReserva;

select * from mvtBibReserva;