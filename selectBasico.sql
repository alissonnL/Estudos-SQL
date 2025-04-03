/*Sua empresa está fazendo um levantamento de quantos clientes estão cadastrados nos estados, porém, faltou levantar os dados do estado do Rio Grande do Sul.

Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.*/

CREATE TABLE customers(
id numeric PRIMARY KEY,
name VARCHAR2(30),
street VARCHAR2(50),
city VARCHAR2(50),
state CHAR(2),
credit_limit NUMBER
);



INSERT INTO customers(id,name,street,city,state,credit_limit) VALUES(5,'Marcos Antônio dos Santos','Av Farrapos','Porto Alegre','RS',4250.25),
(4,'Jane Ester','Av 7 de setembro','Erechim','RS',800),
(3,'Luiza Augusta Mhor','Rua Salto Grande','Niteroi','RJ',4000),
(2,'Antonio Carlos Mamel','Av. Pinheiros','Belo Horizonte','MG',3500.5),
(1,'Pedro Augusto da Rocha','Rua Pedro Carlos Hoffman','Porto Alegre','RS',700);


SELECT name
FROM customers
WHERE state = 'RS'
ORDER BY id;
