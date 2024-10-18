SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 30
AND p.Score <= 135
AND p.ViewCount >= 720.0
AND u.Reputation >= 599
AND p.CreationDate <= 1496
AND u.CreationDate >= 581
AND u.CreationDate <= 1513

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;