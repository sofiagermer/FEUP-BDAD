.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Speaker.Name 
FROM Speaker, Talk
WHERE Talk.speaker = Speaker.Id
GROUP BY Talk.speaker
HAVING count(*) > 1