SELECT *FROM DEPARTAMENTO;

SELECT *FROM PROJETO;

SELECT *FROM LOCALIZACAO;

SELECT *FROM EMPREGADO;

SELECT *FROM DEPENDENTE;

SELECT *FROM MEMBROS;
SELECT *FROM trabalho

INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;
/* Juntamos as 3 tabelas usando INNER JOIN */


-- Deixamos somente os dados que nos interresam no momento

SELECT
	aluno.Nome,
	aluno.RA,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho

INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;

/* TRUNCATE- apaga todos os registro na tabela */
TRUNCATE TABLE trabalho;

SELECT *FROM aluno;

/* utilizamos a função nativa count para retornar o número de registro na minha tabela 
usamos o Alias "AS" para nomear a coluna
*/

SELECT COUNT (*) AS total_registros FROM aluno;

/* pegamos a idade máxima dos alunos */

SELECT MAX(Idade) AS idade_maxima FROM aluno;

/* pegar a idade minima dos alunos */

SELECT MIN (Idade) AS idade_minima FROM aluno;

/* media da idade dos alunos */

SELECT AVG (Idade) AS media_idade FROM aluno;

/* SOMA DAS IDADES */

SELECT SUM (Idade) AS soma_idade FROM aluno;

/* juntamos todas funções em uma consulta */

SELECT
	COUNT(*)AS total,
	MAX (Idade) AS idade_maxima,
	MIN (Idade) AS idade_minima,
	AVG (Idade) AS media_idade,
	SUM (Idade) AS soma_idade
FROM aluno;