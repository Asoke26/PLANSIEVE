SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 64
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 60.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 704
AND p.CreationDate >= 170
AND p.CreationDate <= 478
AND pl.CreationDate <= 333
AND ph.CreationDate >= 581
AND v.CreationDate <= 632

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;