SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 37
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 14.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 946
AND p.CreationDate >= 158
AND p.CreationDate <= 1340
AND pl.CreationDate <= 1151
AND ph.CreationDate >= 80
AND v.CreationDate <= 188

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;