drop database if exists loja;
create database loja;
use loja;
create table filme (
   id_filme int not null auto_increment primary key,
   tit_filme varchar(100) not null,
   ctg_filme varchar(100) not null);

create table fita (
   id_fita int not null auto_increment primary key,
   frm_fita varchar(100) not null,
   id_filme int not null,
   foreign key (id_filme) references filme (id_filme));
   
create table astro (
   id_astro int not null auto_increment primary key,
   nm_astro varchar(100) not null,
   data_nasc_astro date not null,
   id_filme int not null,
   foreign key (id_filme) references filme (id_filme));
   
create table membro (
   id_membro int not null auto_increment primary key,
   pr_nm_membro varchar(100) not null,
   ult_nm_membro varchar(100) not null,
   tel_membro varchar(100) not null,
   rua_membro varchar(100) not null,
   num_res_membro varchar(10) not null,
   crd_membro varchar(100) not null,
   id_fita int not null,
   id_astro int not null,
   foreign key (id_fita) references fita (id_fita),
   foreign key (id_astro) references astro (id_astro));

insert into filme (tit_filme, ctg_filme) values
('Por Agua Abaixo', 'comedia'),
('Corra', 'suspense'),
('Annabelle', 'terror');

SELECT * FROM filme;

insert into fita (frm_fita, id_filme) values
('BETA', 1),
('VHS', 2);

SELECT * FROM fita;