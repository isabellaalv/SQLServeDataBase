/* criar banco */

CREATE DATABASE boletim;

/* excluir banco */

DROP DATABASE boletim;

/* usar o banco */

USE boletim;
/* criar tabela de aluno */
-- NOT NULL SERVE PARA OBRIGAR O DADO A SER PREENCHIDO
-- IDENTITY SERVE PARA AUTOINCREENTA DE 1 EM 1, quando for cad uma nova pessoa ele vai fazer o cad da nova pessoa
CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (100) NOT NULL, 
	RA VARCHAR (20),
	Idade INT
);

/* criar tabela matéria */

CREATE TABLE materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR (50) NOT NULL
);

/* criar tabela de trabalho  */

CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,
	
	--chamar chave estrangeiras

	IdMateria INT FOREIGN KEY REFERENCES materia (IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno)
);

/* incluir nova coluno */

ALTER TABLE materia ADD Teste VARCHAR (2);


/* EXCLUIR COLUNA  */

ALTER TABLE materia DROP COLUMN Teste;

/* alterar dados */
UPDATE aluno SET 
Nome = 'Bruna Ribeiro' ,
Idade = '21'
WHERE IdAluno = 2;