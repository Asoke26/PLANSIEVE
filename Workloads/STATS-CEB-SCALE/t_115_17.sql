SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 8
AND u.Reputation >= 417
AND u.Reputation <= 1236
AND u.Views >= 125
AND ph.CreationDate >= 185
AND ph.CreationDate <= 549

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;