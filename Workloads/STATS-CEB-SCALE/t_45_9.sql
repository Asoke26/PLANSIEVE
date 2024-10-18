SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 43
AND p.FavoriteCount >= 7.0
AND p.FavoriteCount <= 137.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 774
AND p.CreationDate >= 73
AND p.CreationDate <= 1254
AND pl.CreationDate <= 1366
AND ph.CreationDate >= 1174
AND v.CreationDate <= 795

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;