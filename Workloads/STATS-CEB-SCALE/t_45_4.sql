SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 48
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 22.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1349
AND p.CreationDate >= 748
AND p.CreationDate <= 1528
AND pl.CreationDate <= 1019
AND ph.CreationDate >= 1093
AND v.CreationDate <= 1430

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;