CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS (
	LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    VALOR  FLOAT(10,2),
    UF CHAR(2),
    ANO INT(2)

);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',09);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',18);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',08);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',18);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',19);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',16);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',15);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',11);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',18);
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',17);

#1 – Trazer todos os dados.
SELECT * FROM LIVROS;

#2 – Trazer o nome do livro e o nome da editora
SELECT LIVRO, EDITORA FROM LIVROS;

#3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

#4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
SELECT LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';

#5 – Trazer os valores dos livros das editoras de São Paulo.
SELECT VALOR FROM LIVROS
WHERE UF = 'SP';

#6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
SELECT * FROM LIVROS
WHERE SEXO = 'M' AND UF IN ('SP','RJ');
