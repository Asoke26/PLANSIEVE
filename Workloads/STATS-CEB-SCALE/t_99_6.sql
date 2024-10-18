SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 26
AND p.Score <= 89
AND p.ViewCount >= 1274.0
AND u.Reputation >= 817
AND p.CreationDate <= 1028
AND u.CreationDate >= 142
AND u.CreationDate <= 519

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;