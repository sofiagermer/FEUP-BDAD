.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Speaker.Name , Talk.Title, Speaker.Country
FROM Speaker, Talk
WHERE Talk.speaker = Speaker.Id
ORDER BY Speaker.Country