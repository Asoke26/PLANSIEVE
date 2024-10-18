SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 9
AND u.Reputation >= 315
AND u.Reputation <= 2282
AND u.Views >= 101
AND ph.CreationDate >= 101
AND ph.CreationDate <= 1520

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;