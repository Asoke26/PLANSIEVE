SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 102
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 24.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1372
AND p.CreationDate >= 304
AND p.CreationDate <= 745
AND pl.CreationDate <= 1049
AND ph.CreationDate >= 401
AND v.CreationDate <= 1081

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;