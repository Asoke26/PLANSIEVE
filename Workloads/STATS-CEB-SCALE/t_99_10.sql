SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 78
AND p.Score <= 102
AND p.ViewCount >= 320.0
AND u.Reputation >= 517
AND p.CreationDate <= 1205
AND u.CreationDate >= 537
AND u.CreationDate <= 1175

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;