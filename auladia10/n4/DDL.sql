CREATE DATABASE n4;

USE n4;

CREATE TABLE EQUIPE (
	IdEquipe INT IDENTITY PRIMARY KEY,
	Tecnicos VARCHAR (100)
);

CREATE TABLE JOGADOR (
	IdJogador INT IDENTITY PRIMARY KEY,
	Nome VARCHAR (100),
	IdEquipe INT FOREIGN KEY REFERENCES EQUIPE (IdEquipe)
);