SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 21
AND p.Score <= 35
AND p.ViewCount >= 1331.0
AND u.Reputation >= 1239
AND p.CreationDate <= 908
AND u.CreationDate >= 323
AND u.CreationDate <= 445

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;