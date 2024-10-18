SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 6
AND p.Score <= 59
AND p.ViewCount >= 499.0
AND u.Reputation >= 331
AND p.CreationDate <= 511
AND u.CreationDate >= 207
AND u.CreationDate <= 975

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;