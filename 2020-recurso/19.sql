.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Topic.Name , count(Talk.Day)
FROM Topic, Talk
WHERE Talk.topic = Topic.id
GROUP BY Talk.topic
UNION
SELECT Topic.Name, 0
FROM Topic
WHERE Topic.ID NOT IN(
    SELECT topic
    FROM Talk
)
