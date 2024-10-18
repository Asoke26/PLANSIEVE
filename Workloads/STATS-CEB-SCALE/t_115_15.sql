SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 13
AND u.Reputation >= 378
AND u.Reputation <= 6216
AND u.Views >= 195
AND ph.CreationDate >= 413
AND ph.CreationDate <= 1060

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;