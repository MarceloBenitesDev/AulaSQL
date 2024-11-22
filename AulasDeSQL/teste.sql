create database teste;
use teste;
create table aluno (
      id_aluno int primary key not null auto_increment,
      nome_aluno varchar(100) not null,
      data_nasc date not null);

create table curso (
	   id_curso int primary key not null auto_increment,
	   nome_curso varchar(100) not null, id_aluno int not null,
       foreign key (id_aluno) references aluno(id_aluno));
       
select * from teste.aluno;