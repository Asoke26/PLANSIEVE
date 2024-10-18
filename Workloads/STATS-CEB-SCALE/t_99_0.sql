SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 10
AND p.Score <= 14
AND p.ViewCount >= 9951.0
AND u.Reputation >= 913
AND p.CreationDate <= 315
AND u.CreationDate >= 30
AND u.CreationDate <= 693

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;