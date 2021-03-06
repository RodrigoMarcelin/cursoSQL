USE COMERCIO;

/*DELIMITER*/

DELIMITER $

/* STORED PROCEDURES*/

DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	SELECT 'JOAO' AS CLIENTE;
END
$

#CHAMANDO  UMA PROCEDURE

CALL NOME_EMPRESA()$
DELIMITER ;
CALL NOME_EMPRESA();

/* PROCEDURE COM PARAMETRO*/
DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	SELECT NUMERO1 + NUMERO2 AS CONTA;
END
$

CALL CONTA(100, 50)$
DELIMITER ;

DROP DATABASE PROJETO;



CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	ID_CURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    HORAS INT(3) NOT NULL,
    VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCO DE DADOS',40,700.00);

SELECT * FROM CURSOS;

DELIMITER #

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30), P_HORAS INT(30), P_PRECO FLOAT(10,2))
BEGIN
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);
END

#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

DELIMITER #

CREATE PROCEDURE CONSULT_CURDO(P_NOME VARCHAR(30))
BEGIN
	SELECT * FROM CURSOS WHERE NOME = P_NOME;
END

#

DELIMITER ;

CALL CONSULT_CURDO('JAVA');
