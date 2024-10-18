SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 58
AND p.FavoriteCount >= 17.0
AND p.FavoriteCount <= 108.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 325
AND p.CreationDate >= 806
AND p.CreationDate <= 1483
AND pl.CreationDate <= 1514
AND ph.CreationDate >= 558
AND v.CreationDate <= 1489

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;