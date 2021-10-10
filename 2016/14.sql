.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Estudante.nome, Curso.nome
FROM Estudante, Curso
WHERE Estudante.curso = Curso.id
AND Estudante.anoCurricular = 3