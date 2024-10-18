SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 4
AND u.Reputation >= 453
AND u.Reputation <= 668
AND u.Views >= 58
AND ph.CreationDate >= 1170
AND ph.CreationDate <= 1187

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;