/* OPERADORES LÓGICOS
OR -> PARA QUE A SAIDA SA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDIÇÃO SEJA VERDADEIRA.
AND -> PARA QUE A SAIDA SEJA VERDADEIRAS TODAS AS CONDIÇÕES PRECISAM SER VERDADEIRAS
*/

/* OR - OU */

USE PROJETO;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

/* AND - E */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';

/* CONTADOR OS REGISTROS DA TABELA */

SELECT COUNT(*) AS "QUANTIDADE DE REGISTRO" FROM CLIENTE;

/* OPERADOR GROUP BY */

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;
