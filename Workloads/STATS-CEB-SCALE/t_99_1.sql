SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 4
AND p.Score <= 35
AND p.ViewCount >= 12363.0
AND u.Reputation >= 235
AND p.CreationDate <= 1157
AND u.CreationDate >= 417
AND u.CreationDate <= 856

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;