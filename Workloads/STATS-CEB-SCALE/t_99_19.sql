SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 6
AND p.Score <= 21
AND p.ViewCount >= 13094.0
AND u.Reputation >= 452
AND p.CreationDate <= 799
AND u.CreationDate >= 683
AND u.CreationDate <= 1190

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;