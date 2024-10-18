SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 20
AND u.Reputation >= 289
AND u.Reputation <= 7663
AND u.Views >= 221
AND ph.CreationDate >= 699
AND ph.CreationDate <= 1287

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;