SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 4
AND p.Score >= 49
AND p.Score <= 85
AND v.BountyAmount <= 350.0
AND u.DownVotes <= 131
AND p.CreationDate >= 1189
AND p.CreationDate <= 1541
AND b.Date <= 1452
AND u.CreationDate >= 68
AND u.CreationDate <= 178

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;