SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= -8
AND p.Score <= 9
AND p.ViewCount >= 958.0
AND u.Reputation >= 950
AND p.CreationDate <= 1354
AND u.CreationDate >= 782
AND u.CreationDate <= 1151

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;