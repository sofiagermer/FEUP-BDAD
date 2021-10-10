.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Estudante.nome AS nome, Estudante.anoCurricular AS anoCurricular
FROM Amizade, Estudante
WHERE Amizade.ID1 = Estudante.ID
GROUP BY Amizade.ID1
ORDER BY count(Amizade.ID2) DESC
LIMIT 1;