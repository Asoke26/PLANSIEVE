SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND v.VoteTypeId = 5
AND u.Reputation >= 85
AND c.CreationDate >= 324
AND v.CreationDate >= 188
AND v.CreationDate <= 246
AND b.Date <= 55

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;