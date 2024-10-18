SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 85
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 233.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1184
AND p.CreationDate >= 68
AND p.CreationDate <= 869
AND pl.CreationDate <= 1448
AND ph.CreationDate >= 1249
AND v.CreationDate <= 940

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;