SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 97
AND p.FavoriteCount >= 5.0
AND p.FavoriteCount <= 35.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 273
AND p.CreationDate >= 329
AND p.CreationDate <= 983
AND pl.CreationDate <= 812
AND ph.CreationDate >= 1405
AND v.CreationDate <= 717

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;