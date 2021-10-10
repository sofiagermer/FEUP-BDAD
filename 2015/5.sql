.mode columns
.headers on
.nullvalue NULL
.width 50

--DROP TRIGGER IF EXISTS deletePic;
--CREATE TRIGGER deletePic AS

/*
DELETE FROM PHOTO 
WHERE ID not in(
    SELECT Photo.id
    FROM Photo, AppearsIn
    WHERE Photo.id = AppearsIn.photo
    AND uploadDate >= '2010-01-01'
    GROUP BY caption
    HAVING count(*) < 2
)

SELECT Photo.id
FROM Photo, AppearsIn
WHERE Photo.id = AppearsIn.photo
AND uploadDate >= '2010-01-01'
GROUP BY caption
HAVING count(*) < 2*/

/*
Delete from Photo
where id not in
(
    select Photo.id
    from Photo, AppearsIn
    where Photo.id = AppearsIn.photo
        and julianday("2010-01-01") - julianday(uploadDate) > 0
    group by Photo.id
    having count(AppearsIn.user) >= 2
);*/

select Photo.id
from Photo, AppearsIn
where Photo.id = AppearsIn.photo
    and julianday("2010-01-01") - julianday(uploadDate) > 0
group by Photo.id
having count(AppearsIn.user) >= 2

