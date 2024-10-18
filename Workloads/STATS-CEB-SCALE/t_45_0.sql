SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 79
AND p.FavoriteCount >= 20.0
AND p.FavoriteCount <= 51.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 379
AND p.CreationDate >= 507
AND p.CreationDate <= 626
AND pl.CreationDate <= 1497
AND ph.CreationDate >= 715
AND v.CreationDate <= 1398

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;