SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 5
AND p.Score >= 5
AND p.Score <= 24
AND v.BountyAmount <= 75.0
AND u.DownVotes <= 131
AND p.CreationDate >= 231
AND p.CreationDate <= 1222
AND b.Date <= 1352
AND u.CreationDate >= 52
AND u.CreationDate <= 1068

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;