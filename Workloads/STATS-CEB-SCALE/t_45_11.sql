SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 30
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 57.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 229
AND p.CreationDate >= 67
AND p.CreationDate <= 325
AND pl.CreationDate <= 748
AND ph.CreationDate >= 960
AND v.CreationDate <= 1425

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;