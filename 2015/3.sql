.mode columns
.headers on
.nullvalue NULL

SELECT ROUND(avg(individual),5) AS Média
FROM(
    SELECT count(*) as individual
    FROM AppearsIn, User
    WHERE AppearsIn.user = User.id
    AND AppearsIn.photo IN (
        SELECT Photo.ID
        FROM Likes, Photo
        WHERE Photo.id = Likes.photo
        GROUP BY Likes.Photo
        HAVING count(*) > 3
    )
    GROUP BY AppearsIn.photo
    )





