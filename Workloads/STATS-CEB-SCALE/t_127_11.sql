SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 96
AND p.FavoriteCount >= 8.0
AND p.FavoriteCount <= 13.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 841
AND p.CreationDate >= 547
AND p.CreationDate <= 1047
AND pl.CreationDate <= 900
AND ph.CreationDate >= 52
AND v.CreationDate <= 1491

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;