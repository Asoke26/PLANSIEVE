SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 9
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 23.0
AND pl.LinkTypeId = 3
AND c.CreationDate >= 32
AND p.CreationDate >= 124
AND p.CreationDate <= 1377
AND pl.CreationDate <= 1301
AND ph.CreationDate >= 1105
AND v.CreationDate <= 1496

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;