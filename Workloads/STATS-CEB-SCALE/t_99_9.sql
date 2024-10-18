SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 7
AND p.Score <= 38
AND p.ViewCount >= 6044.0
AND u.Reputation >= 261
AND p.CreationDate <= 1165
AND u.CreationDate >= 162
AND u.CreationDate <= 172

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;