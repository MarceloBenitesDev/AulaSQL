drop database if exists construtora;
create database construtora;
use construtora;
create table empregado (
   id_emp int not null auto_increment primary key,
   nm_emp varchar(100) not null);
   
create table chefe (
   id_chefe int not null auto_increment primary key,
   nm_chefe varchar(100) not null,
   id_emp int not null,
   foreign key (id_emp) references empregado (id_emp));
   
create table departamento2 (
   id_depar int not null auto_increment primary key,
   nm_depar varchar(100) not null,
   id_chefe int not null,
   id_emp int not null,
   foreign key (id_chefe) references chefe (id_chefe),
   foreign key (id_emp) references empregado (id_emp));
   
create table projeto (
   id_proj int not null auto_increment primary key,
   nm_proj varchar(100) not null,
   id_emp int not null,
   id_depar int not null,
   foreign key (id_emp) references empregado (id_emp),
   foreign key (id_depar) references departamento (id_depar));