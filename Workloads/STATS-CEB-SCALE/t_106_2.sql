SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 11
AND v.VoteTypeId = 5
AND u.Reputation >= 773
AND c.CreationDate >= 523
AND v.CreationDate >= 294
AND v.CreationDate <= 798
AND b.Date <= 64

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;