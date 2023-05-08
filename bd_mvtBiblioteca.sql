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

drop table mvtBibEditora;