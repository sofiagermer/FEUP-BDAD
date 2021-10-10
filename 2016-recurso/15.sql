.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT e2.nome
FROM Amizade, Estudante e1, Estudante e2
WHERE Amizade.ID1 = e1.ID
AND Amizade.ID2 = e2.ID
AND e1.nome LIKE "Gabriel%"