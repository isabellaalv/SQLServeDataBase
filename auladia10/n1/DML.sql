
INSERT INTO DEPARTAMENTO(NomeDepartamento)
VALUES ('a'),
('b'),
('c');

INSERT INTO PROJETO(NomeProjeto)
VALUES ('Code'),
('UX'),
('Gestão');

INSERT INTO LOCALIZACAO(Rua, IdDepartamento)
VALUES ('E', 1),
('F', 2),
('G', 3);

INSERT INTO EMPREGADO(Nome, IdLocal)
VALUES ('Iara', 1),
('Laticia', 2),
('Gabi', 3);

INSERT INTO DEPENDENTE(Nome, IdEmpregado)
VALUES('Luisa',1),
('Amanda',1),
('Daniela',2);

INSERT INTO MEMBROS(IdEmpregado, IdProjeto)
VALUES (1,1),
(2,2),
(3,3);