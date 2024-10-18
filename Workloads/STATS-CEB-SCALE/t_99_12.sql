SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 40
AND p.Score <= 128
AND p.ViewCount >= 1454.0
AND u.Reputation >= 725
AND p.CreationDate <= 487
AND u.CreationDate >= 38
AND u.CreationDate <= 741

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;