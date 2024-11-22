drop database if exists escola;
create database escola;
use escola;
create table estudante (
   id_estu int not null auto_increment primary key,
   nm_estu varchar(100) not null,
   mt_estu varchar(100) not null,
   ba_estu varchar(100) not null,
   rua_estu varchar(100) not null,
   num_res_estu varchar(100) not null,
   nota1_estu varchar(100) not null,
   nota2_estu varchar(100) not null,
   nota3_estu varchar(100) not null);
   
create table professor2 (
   id_prof2 int not null auto_increment primary key,
   nm_prof2 varchar(100) not null,
   sal_prof2 varchar(100) not null,
   data_nasc_prof2 date not null,
   tit_prof2 varchar(100) not null);
   
create table turma (
   id_turma int not null auto_increment primary key,
   nm_turma varchar(100) not null,
   id_estu int not null,
   id_prof2 int not null,
   foreign key (id_estu) references estudante (id_estu),
   foreign key (id_prof2) references professor2 (id_prof2));

insert into estudante (nm_estu, mt_estu, ba_estu, rua_estu, num_res_estu, nota1_estu, nota2_estu, nota3_estu) values
('Marcelo', '344', 'Fragata', 'Rua Cavalaraia', '934', '9.2', '7.8', '8');

SELECT * FROM estudante;

insert into professor2 (nm_prof2, sal_prof2, data_nasc_prof2, tit_prof2) values
('Igor', '9772.67', '1985-05-12', 'mestre'),
('Juliana', '10650.00', '1996-12-24', 'doutor'),
('Pedro', '8500.00', '1987-08-01', 'graduado');

SELECT * FROM professor2;

SET @last_estu_id = LAST_INSERT_ID();
insert into turma (nm_turma, id_estu, id_prof2) values
('espanhol', @last_estu_id, 1),
('ingles', @last_estu_id, 2),
('alemao', @last_estu_id, 3);

SELECT * FROM turma;

