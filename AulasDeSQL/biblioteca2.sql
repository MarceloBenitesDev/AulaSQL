drop database if exists biblioteca2;
create database biblioteca2;
use biblioteca2;
create table livro (
   id_livro int not null primary key auto_increment,
   tit_livro varchar(100) not null,
   aut_livro varchar(100) not null,
   edi_livro varchar(100) not null,
   loc_edi_livro varchar(100) not null,
   isnb_livro int not null,
   conj_pc_livro varchar(100) not null);
   
create table associado (
  id_associado int not null primary key auto_increment,
  nm_associado varchar(100) not null,
  rua_associado varchar(100) not null,
  num_res_associado varchar(10) not null);
  
create table emprestimo (
   data_emprestimo date not null,
   id_livro int not null,
   id_associado int not null,
   foreign key(id_livro) references livro(id_livro),
   foreign key(id_associado) references associado(id_associado));
   