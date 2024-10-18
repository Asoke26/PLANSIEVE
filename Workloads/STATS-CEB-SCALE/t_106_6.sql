SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 14
AND v.VoteTypeId = 5
AND u.Reputation >= 165
AND c.CreationDate >= 479
AND v.CreationDate >= 68
AND v.CreationDate <= 100
AND b.Date <= 1193

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;