SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 13
AND v.VoteTypeId = 8
AND u.Reputation >= 450
AND c.CreationDate >= 809
AND v.CreationDate >= 13
AND v.CreationDate <= 1002
AND b.Date <= 583

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;