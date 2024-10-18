SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 12
AND u.Reputation >= 71
AND u.Reputation <= 725
AND u.Views >= 32
AND ph.CreationDate >= 865
AND ph.CreationDate <= 1396

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;