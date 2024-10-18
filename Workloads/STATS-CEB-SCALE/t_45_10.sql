SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 49
AND p.FavoriteCount >= 8.0
AND p.FavoriteCount <= 60.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 858
AND p.CreationDate >= 933
AND p.CreationDate <= 1187
AND pl.CreationDate <= 1268
AND ph.CreationDate >= 544
AND v.CreationDate <= 1535

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;