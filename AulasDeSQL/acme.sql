drop database if exists acme;
create database acme;
use acme;
create table funcionario (
   id_func int not null auto_increment primary key,
   nm_func varchar(100) not null);
   
create table dependente (
   id_depe int not null auto_increment primary key,
   nm_depe varchar(100) not null,
   id_func int not null,
   foreign key (id_func) references funcionario (id_func));
   
create table departamento (
   id_depar int not null auto_increment primary key,
   nm_depar varchar(100) not null,
   id_func int not null,
   id_depe int not null,
   foreign key (id_func) references funcionario (id_func),
   foreign key (id_depe) references dependente (id_depe));
   
create table diretoria (
   id_dire int not null auto_increment primary key,
   nm_dire varchar(100) not null,
   id_depar int not null,
   foreign key (id_depar) references departamento (id_depar));
   