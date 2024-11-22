drop database if exists lojavirtual;
create database lojavirtual;
use lojavirtual;

create table cliente (
   id_cliente int not null auto_increment primary key,
   nm_cliente varchar(50) not null,
   end_cliente varchar(255) not null,
   cpf_cliente varchar(50) not null,
   cid_cliente varchar(50) not null,
   pais_cliente varchar(30) not null);
   
create table produto (
   id_produto int not null auto_increment primary key,
   nm_produto varchar(100) not null,
   prc_produto decimal(10,2) not null,
   qt_produto int not null);
   
create table pedido (
   id_pedido int not null auto_increment primary key,
   id_cliente int not null,
   id_produto int not null,
   dt_pedido date not null,
   qt_pedido int not null,
   foreign key (id_cliente) references cliente (id_cliente),
   foreign key (id_produto) references produto (id_produto));
  
CREATE TABLE venda (
   id_venda INT NOT NULL auto_increment PRIMARY KEY,
   id_pedido INT NOT NULL,
   tt_venda DECIMAL(10,2) NOT NULL,
   FOREIGN KEY (id_pedido) REFERENCES  pedido (id_pedido)); 
  
INSERT INTO cliente(nm_cliente, end_cliente, cpf_cliente, cid_cliente, pais_cliente) values
   ('João Carlos', 'Rua das flores, 13', '123456789-23', 'Porto Alegre', 'Brasil'),
   ('Mariana', 'Rua Tal, 20', '09876543-21', 'Campinas', 'Brasil');
   
SELECT * FROM cliente;

INSERT INTO produto(nm_produto, prc_produto, qt_produto) values
   ('Notebook', 3000.00, 5),
   ('Monitor 27', 800.00, 8),
   ('Teclado gamer', 1000.00, 5);
   
SELECT * FROM produto;

INSERT INTO pedido(id_cliente, id_produto, dt_pedido, qt_pedido) values
   (1, 1, '2024-10-10', 1);
   
SELECT * FROM pedido;

INSERT INTO venda(id_pedido, tt_venda) values
   (1, 3000.00);
   
SELECT * FROM venda;

ALTER TABLE cliente
   ADD COLUMN email varchar(100);
   
UPDATE cliente
SET email = 'joaocarlos@gmail.com'
WHERE nm_cliente = 'João Carlos';

DELETE FROM cliente
WHERE nm_cliente = 'Mariana';

UPDATE produto
SET qt_produto = 2
WHERE nm_produto = 'Teclado gamer';

ALTER TABLE cliente
   DROP COLUMN email;
   
SELECT (nm_produto)
FROM produto
WHERE prc_produto < 3000.00 and prc_produto > 800.00;


