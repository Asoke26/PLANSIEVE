SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= -10
AND p.Score <= 156
AND p.ViewCount >= 1059.0
AND u.Reputation >= 486
AND p.CreationDate <= 506
AND u.CreationDate >= 79
AND u.CreationDate <= 317

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;