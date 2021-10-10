/*DROP TRIGGER IF EXISTS sofi;
CREATE TRIGGER sofi
AFTER INSERT ON AppearsIn
FOR EACH ROW
WHEN(SELECT user FROM Likes WHERE NEW.user = User AND New.photo = Photo) IS NULL
BEGIN
    INSERT INTO Likes(New.user, New.photo)
END;*/

Drop Trigger if exists AutoLike;

Create Trigger AutoLike
After Insert On AppearsIn
For each row
Begin
    Insert Into Likes (user, photo) Values (New.user, New.photo);
End;

INSERT into AppearsIn values(1234, 8765);

SELECT user, photo
FROM AppearsIn;

SELECT user, photo
FROM Likes;