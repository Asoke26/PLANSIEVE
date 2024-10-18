SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 10
AND p.Score <= 62
AND p.ViewCount >= 1093.0
AND u.Reputation >= 2108
AND p.CreationDate <= 1127
AND u.CreationDate >= 128
AND u.CreationDate <= 638

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;