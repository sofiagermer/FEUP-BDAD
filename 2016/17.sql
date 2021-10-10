.mode columns
.headers on
.nullvalue NULL
.width 20 20

DROP VIEW IF EXISTS amigosMS;
CREATE VIEW amigosMS AS
SELECT Amizade.ID2
FROM Amizade, Estudante e1
WHERE Amizade.ID1 = e1.ID
AND e1.nome LIKE "Miguel Sampaio";

DROP VIEW IF EXISTS amigosMS2;
CREATE VIEW amigosMS2 AS
SELECT Amizade.ID2
FROM Amizade
WHERE Amizade.ID1 IN amigosMS;

DROP VIEW IF EXISTS amigosMS3;
CREATE VIEW amigosMS3 AS
SELECT Amizade.ID2 AS ID
FROM Amizade
WHERE Amizade.ID1 IN amigosMS2;

SELECT DISTINCT * FROM amigosMS3