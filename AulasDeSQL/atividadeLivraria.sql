DROP DATABASE IF EXISTS livraria;
CREATE DATABASE livraria;
USE livraria;

CREATE TABLE autores (
   id_aut INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nm_aut VARCHAR(100) NOT NULL);
   
CREATE TABLE livros (
   id_liv INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nm_liv VARCHAR(100) NOT NULL,
   ano_liv VARCHAR(10) NOT NULL,
   prc_liv DECIMAL(10, 2) NOT NULL,
   qt_liv VARCHAR(100) NOT NULL,
   id_aut INT NOT NULL,
   FOREIGN KEY (id_aut) REFERENCES autores (id_aut));
   
CREATE TABLE vendas (
   id_vend INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   dt_vend DATE NOT NULL,
   id_liv INT NOT NULL,
   FOREIGN KEY (id_liv) REFERENCES livros (id_liv));
   
INSERT INTO autores (nm_aut) VALUES
('Machado de Assis'),
('Monteiro Lobato'),
('Carolina Maria de Jesus');

SELECT * FROM autores;

INSERT INTO livros (nm_liv, ano_liv, prc_liv, qt_liv, id_aut) VALUES
('Urupes', '1918', '25.70', '12', 2),
('Quarto De Despejo', '1960', '25.50', '23', 3),
('Dom Casmurro', '1899', '42.89', '34', 1),
('O Saci', '1921', '23.99', '19', 2),
('A Chave Do Tamanho', '1942', '33.49', '6',  2),
('Viagem ao Ceu', '1932', '23.90', '0', 2),
('Diario De Bitita', '1982', '35.99', '9', 3);

SELECT * FROM livros;

INSERT INTO vendas (dt_vend, id_liv) VALUES
('2024-03-02', 1),
('2024-05-23', 4),
('2023-12-25', 7),
('2024-03-02', 3),
('2024-03-05', 7),
('2024-03-02', 2);

SELECT * FROM vendas;

UPDATE livros
SET prc_liv = 29.90
WHERE nm_liv = 'Urupes';

UPDATE livros
SET qt_liv = 50
WHERE nm_liv = 'Quarto De Despejo';

DELETE FROM livros
WHERE nm_liv = 'Viagem ao Ceu';

SELECT (nm_liv)
FROM livros
WHERE id_aut = 2;

SELECT nm_liv FROM livros WHERE prc_liv > 30.00;

SELECT nm_aut, COUNT(id_liv) AS num_liv
FROM autores
JOIN livros ON autores.id_aut = livros.id_aut
GROUP BY nm_aut
HAVING COUNT(id_liv) > 1;

SELECT dt_vend, id_liv FROM vendas WHERE dt_vend = '2024-03-02';

SELECT AVG(prc_liv) AS media_prc FROM livros;

SELECT COUNT(dt_vend) AS tt_vend FROM vendas;
   