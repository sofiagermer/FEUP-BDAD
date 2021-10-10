.mode columns
.headers on
.nullvalue NULL
.width 20 20


--DROP VIEW IF EXISTS AmizadeTransitiva;
--CREATE VIEW AB AS

SELECT AB.ID1, BC.ID2
FROM Amizade AB, Amizade BC
WHERE AB.ID2 = BC.ID1
AND AB.ID1 <> BC.ID2 -- impedir auto-amizades
AND AB.ID1 < BC.ID2


