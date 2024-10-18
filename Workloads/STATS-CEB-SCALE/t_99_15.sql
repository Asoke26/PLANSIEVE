SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 35
AND p.Score <= 78
AND p.ViewCount >= 4254.0
AND u.Reputation >= 339
AND p.CreationDate <= 1107
AND u.CreationDate >= 609
AND u.CreationDate <= 905

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;