.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Estudante.nome
FROM Amizade, Estudante
WHERE Amizade.ID1 = Estudante.ID
GROUP BY Amizade.ID1
HAVING (count(Amizade.ID2) >3)