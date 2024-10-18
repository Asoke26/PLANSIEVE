SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 121
AND p.FavoriteCount >= 24.0
AND p.FavoriteCount <= 65.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 748
AND p.CreationDate >= 31
AND p.CreationDate <= 534
AND pl.CreationDate <= 1522
AND ph.CreationDate >= 904
AND v.CreationDate <= 902

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;