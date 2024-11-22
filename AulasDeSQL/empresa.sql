drop database if exists empresa;
create database empresa;
use empresa;
create table trabalhador (
   id_trab int not null auto_increment primary key,
   nm_trab varchar(100) not null,
   cpf_trab varchar(100) not null,
   rua_trab varchar(100) not null,
   num_res_trab varchar(100) not null,
   sal_trab varchar(100) not null,
   hor_trab time not null,
   sup_trab varchar(100) not null);
   
create table departamento3 (
   id_depar3 int not null auto_increment primary key,
   nm_depar3 varchar(100) not null,
   emp_ger_depar3 varchar(100) not null,
   id_trab int not null,
   foreign key (id_trab) references trabalhador (id_trab));
   
create table projeto2 (
   id_proj2 int not null auto_increment primary key,
   nm_proj2 varchar(100) not null,
   id_trab int not null,
   id_depar3 int not null,
   foreign key (id_trab) references trabalhador (id_trab),
   foreign key (id_depar3) references departamento3 (id_depar3));