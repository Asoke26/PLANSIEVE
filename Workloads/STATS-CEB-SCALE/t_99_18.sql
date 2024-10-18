SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 43
AND p.Score <= 106
AND p.ViewCount >= 2186.0
AND u.Reputation >= 1506
AND p.CreationDate <= 1445
AND u.CreationDate >= 238
AND u.CreationDate <= 688

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;