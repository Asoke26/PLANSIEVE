SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 24
AND u.Reputation >= 377
AND u.Reputation <= 1766
AND u.Views >= 51
AND ph.CreationDate >= 778
AND ph.CreationDate <= 1137

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;