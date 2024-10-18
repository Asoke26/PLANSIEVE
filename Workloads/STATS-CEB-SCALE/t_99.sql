SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score>=0
AND p.Score<=16
AND p.ViewCount>=0
AND u.Reputation>=1
AND p.CreationDate<=1540
AND u.CreationDate>=27
AND u.CreationDate<=1528

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;