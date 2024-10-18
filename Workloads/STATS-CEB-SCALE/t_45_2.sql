SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 164
AND p.FavoriteCount >= 1.0
AND p.FavoriteCount <= 28.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 177
AND p.CreationDate >= 334
AND p.CreationDate <= 564
AND pl.CreationDate <= 472
AND ph.CreationDate >= 1166
AND v.CreationDate <= 1539

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;