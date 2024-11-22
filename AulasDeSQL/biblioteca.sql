drop database if exists biblioteca;
create database biblioteca;
use biblioteca;
create table livro (
   id_livro int not null primary key,
   tit_livro varchar(100) not null,
   ano_livro date not null,
   edit_livro varchar(100) not null,
   id_autor int not null,
   foreign key (id_autor) references autores (id_autor));
   
create table autores (
   id_autor int not null primary key,
   nm_autor varchar(100) not null,
   cpf_autor varchar(100) not null,
   nac_autor varchar(100) not null);
   
create table categoria (
   id_categoria int not null primary key,
   desc_categoria varchar(100) not null);
   
SELECT nm_autor, COUNT(livro.id_livro) AS nm_livro FROM autores
JOIN livro ON autores.id_autor = livro.id_autor
GROUP BY nm_autor
HAVING COUNT(livro.id_livro) > 1;

   