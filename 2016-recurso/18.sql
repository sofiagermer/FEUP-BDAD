.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT e1.nome as Nome, e2.nome as Nome
FROM Amizade a, Estudante e1, Estudante e2
WHERE a.ID1 = e1.ID
AND a.ID2 = e2.ID
--AND a.ID1 <> a.ID2
AND a.ID1 < a.ID2 -- N Pares Simétricos nem pares repetidos
AND e1.curso <> e2.curso
