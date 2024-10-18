SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 83
AND p.FavoriteCount >= 5.0
AND p.FavoriteCount <= 66.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 882
AND p.CreationDate >= 67
AND p.CreationDate <= 1066
AND pl.CreationDate <= 493
AND ph.CreationDate >= 851
AND v.CreationDate <= 1463

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;