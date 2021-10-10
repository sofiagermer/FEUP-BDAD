.mode columns
.headers on
.nullvalue NULL
.width 20 20

SELECT photo.caption
FROM Photo, User
WHERE Photo.user = User.id
AND User.name like "%Daniel Ramos"
AND julianDay(uploadDate) - julianDay(creationDate) = 2