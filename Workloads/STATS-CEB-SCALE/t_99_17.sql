SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= -4
AND p.Score <= 24
AND p.ViewCount >= 2663.0
AND u.Reputation >= 181
AND p.CreationDate <= 990
AND u.CreationDate >= 448
AND u.CreationDate <= 951

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;