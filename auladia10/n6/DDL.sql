DROP DATABASE n6;

CREATE DATABASE n6;

USE n6;

CREATE TABLE CURSO (
	IdCurso INT IDENTITY PRIMARY KEY,
	Tipo VARCHAR (100),

);

CREATE TABLE CANDIDATO (
	IdCandidato INT IDENTITY PRIMARY KEY,
	Nome VARCHAR (100),
	RA VARCHAR (20),
	IdCurso INT FOREIGN KEY REFERENCES CURSO (IdCurso)
);