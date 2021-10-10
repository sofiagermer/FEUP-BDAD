.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT Topic.Name
FROM Topic
WHERE Topic.ID NOT IN(
    SELECT topic
    FROM Talk
)