SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 11
AND p.Score <= 44
AND p.ViewCount >= 1153.0
AND u.Reputation >= 363
AND p.CreationDate <= 262
AND u.CreationDate >= 233
AND u.CreationDate <= 386

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;