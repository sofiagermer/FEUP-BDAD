.mode columns
.headers on
.nullvalue NULL
.width 20 20

/*
SELECT e1.nome , e1.anoCurricular
FROM Amizade, Estudante e1 , Estudante e2
WHERE Amizade.ID1 = e1.ID 
AND Amizade.ID2 = e2.ID
AND e1.anoCurricular = e2.anoCurricular
GROUP BY Amizade.ID1
HAVING (count(Amizade.ID2) > 0)*/

/*
SELECT e1.nome, e1.anoCurricular as esperanca
FROM Amizade a, Estudante e1 , Estudante e2
WHERE a.ID1 = e1.ID 
AND e1.anoCurricular = e2.anoCurricular
GROUP BY a.ID1
HAVING (count(a.ID2) > 0)*/

SELECT e1.nome, e2.nome, e1.anoCurricular , e2.anoCurricular
FROM Amizade, Estudante e1, Estudante e2
WHERE e2.ID not in(
    SELECT Amizade.ID2
    FROM Amizade, Estudante e3, Estudante e4
    WHERE Amizade.ID1 = e3.ID
    AND Amizade.ID2 = e4.ID
    AND e1.ID = e3.ID
    AND e3.anoCurricular <> e4.anoCurricular
)
--GROUP BY e1.ID