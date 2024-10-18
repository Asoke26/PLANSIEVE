SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 14
AND v.VoteTypeId = 5
AND u.Reputation >= 157
AND c.CreationDate >= 265
AND v.CreationDate >= 833
AND v.CreationDate <= 1389
AND b.Date <= 1100

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;