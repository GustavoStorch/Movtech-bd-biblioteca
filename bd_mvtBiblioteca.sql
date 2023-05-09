create database Treinamento;

use Treinamento;

create table mvtBibAutor(
	codAutor int identity primary key,
	nomeAutor varchar(50) not null,
	descricao varchar(1000),
	fotoAutor varbinary(MAX)
);

create table mvtBibEditora(
	codEditora int identity primary key,
	nomeEditora varchar(50) not null
);

create table mvtBibLocal(
	codLocal int identity primary key,
	descricaoLocal varchar(50) not null
);

create table mvtBibSecao(
	codSecao int identity primary key,
	descricaoSecao varchar(50) not null
);

/*create table mvtBibItemAcervo(
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
	localização varchar(50) not null,
	secao varchar(50),
	idioma varchar(50),
	foreign key(codLocal) references mvtBibLocal(codLocal),
	foreign key(codAutor) references mvtBibAutor(codAutor),
	foreign key(codEditora) references mvtBibEditora(codEditora)
);*/

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
	localização varchar(50) not null,
	codSecao int not null,
	secao varchar(50),
	idioma varchar(50),
	foreign key(codLocal) references mvtBibLocal(codLocal),
	foreign key(codAutor) references mvtBibAutor(codAutor),
	foreign key(codEditora) references mvtBibEditora(codEditora),
	foreign key(codSecao) references mvtBibSecao(codSecao)
);