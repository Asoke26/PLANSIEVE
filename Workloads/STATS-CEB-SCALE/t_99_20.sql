SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 79
AND p.Score <= 129
AND p.ViewCount >= 1274.0
AND u.Reputation >= 401
AND p.CreationDate <= 1439
AND u.CreationDate >= 245
AND u.CreationDate <= 1467

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;