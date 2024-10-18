SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 95
AND p.FavoriteCount >= 30.0
AND p.FavoriteCount <= 79.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 482
AND p.CreationDate >= 268
AND p.CreationDate <= 902
AND pl.CreationDate <= 1461
AND ph.CreationDate >= 902
AND v.CreationDate <= 997

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;