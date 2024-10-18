SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 3
AND p.Score <= 122
AND p.ViewCount >= 1592.0
AND u.Reputation >= 15
AND p.CreationDate <= 565
AND u.CreationDate >= 95
AND u.CreationDate <= 373

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;