drop database if exists CDS;
create database CDS;
use CDS;
create table cantor (
   id_cantor int not null auto_increment primary key,
   nm_cantor varchar(100) not null);
   
create table compositor (
   id_compositor int not null auto_increment primary key,
   nm_compositor varchar(100) not null);
   
create table musica (
   id_mus int not null auto_increment primary key,
   tit_mus varchar(100) not null,
   dur_mus time not null,
   id_cantor int not null,
   id_compositor int not null,
   foreign key (id_cantor) references cantor (id_cantor),
   foreign key (id_compositor) references compositor (id_compositor));

create table cd (
   id_cd int not null auto_increment primary key,
   tit_cd varchar(100) not null,
   id_mus int not null,
   foreign key (id_mus) references musica (id_mus));
   