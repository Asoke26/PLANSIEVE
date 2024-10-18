SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 45
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 80.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 910
AND p.CreationDate >= 56
AND p.CreationDate <= 1362
AND pl.CreationDate <= 690
AND ph.CreationDate >= 703
AND v.CreationDate <= 333

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;