SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 3
AND u.Reputation >= 347
AND u.Reputation <= 526
AND u.Views >= 98
AND ph.CreationDate >= 549
AND ph.CreationDate <= 1307

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;