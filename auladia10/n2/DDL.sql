CREATE DATABASE n2;

/* USANDO ARQUIVO CRIADO */
USE n2;

/* CRIANDO TABELA */
CREATE TABLE DIRETOR (
	IdDiretor INT IDENTITY PRIMARY KEY,
	Nome VARCHAR (100),
	RG VARCHAR (20)
);

/* CRIANDO TABELA */

CREATE TABLE DEPARTAMENTO (
	IdDepartamento INT IDENTITY PRIMARY KEY,
	Cargo VARCHAR (50),
	IdDiretor INT FOREIGN KEY REFERENCES DIRETOR (IdDiretor)
);

/* ADC UMA NOVA COLUNA NA TABELA*/

ALTER TABLE DEPARTAMENTO ADD NomeDepartamento VARCHAR (100);