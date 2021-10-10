.mode columns
.headers on
.nullvalue NULL
.width 20 20

DROP VIEW IF EXISTS temp;
CREATE VIEW temp AS
SELECT DISTINCT e1.nome as Nome, e2.anoCurricular -- nota: o ano curricular é dos amigos neste caso
FROM Amizade, Estudante e1, Estudante e2
WHERE Amizade.ID1 = e1.ID
AND Amizade.ID2 = e2.ID
GROUP BY e1.nome
HAVING count(e2.anoCurricular) = 5;

SELECT nome FROM temp;

