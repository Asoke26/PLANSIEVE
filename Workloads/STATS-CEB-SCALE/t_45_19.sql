SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 77
AND p.FavoriteCount >= 54.0
AND p.FavoriteCount <= 80.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 73
AND p.CreationDate >= 83
AND p.CreationDate <= 850
AND pl.CreationDate <= 445
AND ph.CreationDate >= 1084
AND v.CreationDate <= 875

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;