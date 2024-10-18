SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 49
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 25.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1531
AND p.CreationDate >= 611
AND p.CreationDate <= 1505
AND pl.CreationDate <= 1328
AND ph.CreationDate >= 1150
AND v.CreationDate <= 1470

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;