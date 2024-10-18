SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 2
AND u.Reputation >= 99
AND u.Reputation <= 175
AND u.Views >= 106
AND ph.CreationDate >= 608
AND ph.CreationDate <= 1234

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;