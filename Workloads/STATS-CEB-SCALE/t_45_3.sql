SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 124
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 80.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1383
AND p.CreationDate >= 610
AND p.CreationDate <= 1258
AND pl.CreationDate <= 992
AND ph.CreationDate >= 491
AND v.CreationDate <= 975

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;