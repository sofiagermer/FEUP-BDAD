.mode columns
.headers on
.nullvalue NULL
.width 50

DROP VIEW IF EXISTS Daniel;
CREATE VIEW Daniel AS 
SELECT name
FROM User
WHERE User.name Like "%Daniel Ramos";

DROP VIEW IF EXISTS AmigoDoDaniel;
CREATE VIEW AmigoDoDaniel AS
SELECT User.name
FROM Friend, User
WHERE Friend.user2 = User.id
AND Friend.user1 IN
(
    SELECT User.ID
    FROM User
    WHERE User.name Like "%Daniel Ramos"
);

DROP VIEW IF EXISTS AmigosDeAmigos;
CREATE VIEW AmigosDeAmigos AS
SELECT User.name
FROM Friend, User
WHERE Friend.user2 = User.id
AND Friend.user1 IN
(
    SELECT User.ID
    FROM User
    WHERE User.name IN AmigoDoDaniel
);

SELECT DISTINCT Photo.caption
FROM AppearsIn, User, Photo
WHERE AppearsIn.User = user.ID
AND Photo.id = AppearsIn.photo
AND User.name IN Daniel 
OR User.name IN AmigoDoDaniel
OR User.name IN AmigosDeAmigos