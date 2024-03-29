CREATE DATABASE n5;

USE n5;

DROP TABLE CURSO2;

DROP TABLE ALUNO2;
/*
CREATE TABLE CURSO2 (
	IdCurso INT IDENTITY PRIMARY KEY,
	NomeCurso VARCHAR (100)
);

CREATE TABLE ALUNO2 (
	IdAluno INT IDENTITY PRIMARY KEY,
	Nome VARCHAR (100),
	RA VARCHAR (20),
	IdCurso INT FOREIGN KEY REFERENCES CURSO2 (IdCurso)
);
*/

CREATE TABLE CLIENTE (
	IdCliente INT IDENTITY PRIMARY KEY,
	Nome VARCHAR (100),
);

CREATE TABLE PROD (
	IdProduto INT IDENTITY PRIMARY KEY,
	Tipo VARCHAR (100),
	Preco FLOAT 
);

CREATE TABLE COMPRA (
	IdCompra INT IDENTITY PRIMARY KEY,
	IdProduto INT FOREIGN KEY REFERENCES PROD (IdProduto),
	IdCliente INT FOREIGN KEY REFERENCES CLIENTE (IdCliente)
);