SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 11
AND p.Score <= 19
AND p.ViewCount >= 157.0
AND u.Reputation >= 932
AND p.CreationDate <= 1102
AND u.CreationDate >= 90
AND u.CreationDate <= 1006

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;