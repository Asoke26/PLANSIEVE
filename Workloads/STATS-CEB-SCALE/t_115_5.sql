SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 24
AND u.Reputation >= 93
AND u.Reputation <= 771
AND u.Views >= 26
AND ph.CreationDate >= 868
AND ph.CreationDate <= 1321

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;