SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 30
AND u.Reputation >= 521
AND u.Reputation <= 3680
AND u.Views >= 124
AND ph.CreationDate >= 485
AND ph.CreationDate <= 1317

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;