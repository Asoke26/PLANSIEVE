SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 98
AND p.FavoriteCount >= 46.0
AND p.FavoriteCount <= 135.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 500
AND p.CreationDate >= 314
AND p.CreationDate <= 922
AND pl.CreationDate <= 1249
AND ph.CreationDate >= 151
AND v.CreationDate <= 1368

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;