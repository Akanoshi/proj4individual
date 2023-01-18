CREATE DATABASE PROJ4INDIVIDUAL;
USE PROJ4INDIVIDUAL;

create table cursos
(
	id int unsigned not null auto_increment,
    nome varchar(50) not null,
    preco double not null default '0',
    primary key (id)
    
);
 create table facilitadores
 (
	id int unsigned not null auto_increment,
    nome varchar(50) not null,
    certificados varchar(255) not null,
    primary key (id)
 );
 
create table turmas
(
	id int not null auto_increment,
    alunos_id int unsigned default null,
    facilitadores_id int unsigned default null,
    carga_horaria smallint,
    primary key (id),
    constraint fk_facilitadores_id foreign key(facilitadores_id) references facilitadores (id)
    
);

create table alunos
(
	id int unsigned not null auto_increment,
    nome varchar(50) not null,
    cpf char(11) not null,
    email varchar(50) not null,
    data_nascimento date,
    primary key (id)
);
    
    
    