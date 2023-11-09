/**
Treino Banco de Dados
Autora: Giovana Manuquian
Data: 07/77/2023
*/-- 

create database db_senai_java;

use db_senai_java;

create table departamento(
idDepartamento int not null,
nome varchar(45) not null,
sigla varchar(15) not null,
primary key(idDepartamento)
);

select * from departamento;

create table funcionario(
idFuncionario int not null,
nome varchar(45) not null,
sobrenome varchar(45) not null,
matricula varchar(45) not null,
permissao int not null,
departamento_FK int,
primary key (idFuncionario),
constraint FKDepartamento foreign key (departamento_FK) references departamento (idDepartamento)
);

create table chefe_departamento(
idChefe int not null,
funcionario_idFuncionario int,
departamento_idDepartamento int,
primary key (idChefe),
constraint FKFuncionario foreign key (funcionario_idFuncionario) references funcionario (idFuncionario),
constraint FKDepartamentoCH foreign key (departamento_idDepartamento) references departamento (idDepartamento)
);

insert into departamento(idDepartamento, nome, sigla) values 
(1, "Tecnologia da Informação", "T.I"),
(2, "Engenharia de Sofware", "ENGS"),
(3, "Infraestrutura", "INF");

insert into funcionario(idFuncionario, nome, sobrenome, matricula, permissao, departamento_FK) values
(1, "Giovana", "Java", 751, 3, 1),
(2, "Halana", "Python", 475, 3, 2),
(3, "Vinicius", "C#", 547, 3, 3);

insert into chefe_departamento(idChefe, funcionario_idFuncionario, departamento_idDepartamento) values
(1, 1, 3);

select * from departamento;

select * from funcionario;

select * from chefe_departamento;


















