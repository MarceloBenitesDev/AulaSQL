drop database if exists cursos;
create database cursos;
use cursos;
create table aluno (
   id_aluno int not null auto_increment primary key,
   tel_aluno varchar(10),
   rua_aluno varchar(100) not null,
   num_res_aluno varchar(10) not null);
   
create table professor (
   id_prof int not null auto_increment primary key,
   nm_prof varchar(100) not null,
   tel_prof varchar(10));

create table curso (
   id_curso int not null auto_increment primary key,
   nm_curso varchar(100) not null,
   dur_curso varchar(10) not null,
   id_aluno int not null,
   id_prof int not null,
   foreign key (id_aluno) references aluno (id_aluno),
   foreign key (id_prof) references professor (id_prof));

insert into aluno (tel_aluno, rua_aluno, num_res_aluno) 
values ('99999999', 'rua Sei la', '8899');

insert into professor (nm_prof, tel_prof) values
('Egberto Silva', '12321234'), 
('Maria do Carmo','34346760');

SET @last_aluno_id = LAST_INSERT_ID();
insert into curso (nm_curso, dur_curso, id_aluno, id_prof) values 
('introdução ao Unix', '4 dias', @last_aluno_id, 1),
('Programação C', '2 dias', @last_aluno_id, 2);

SELECT * FROM curso;