SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= -2
AND p.Score <= 135
AND p.ViewCount >= 146.0
AND u.Reputation >= 5309
AND p.CreationDate <= 1520
AND u.CreationDate >= 699
AND u.CreationDate <= 1188

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;