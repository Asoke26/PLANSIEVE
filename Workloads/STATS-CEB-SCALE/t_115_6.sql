SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 2
AND u.Reputation >= 311
AND u.Reputation <= 1942
AND u.Views >= 47
AND ph.CreationDate >= 318
AND ph.CreationDate <= 625

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;