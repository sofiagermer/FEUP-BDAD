.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT DISTINCT User.name
FROM User
WHERE User.ID NOT IN(
    SELECT User.ID
    FROM Photo, User
    WHERE Photo.user = User.id
)
