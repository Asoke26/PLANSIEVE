SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 10
AND u.Reputation >= 32
AND u.Reputation <= 1713
AND u.Views >= 269
AND ph.CreationDate >= 323
AND ph.CreationDate <= 1138

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;