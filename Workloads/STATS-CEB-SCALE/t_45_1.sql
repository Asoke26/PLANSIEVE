SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 11
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 68.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1522
AND p.CreationDate >= 246
AND p.CreationDate <= 1041
AND pl.CreationDate <= 659
AND ph.CreationDate >= 580
AND v.CreationDate <= 521

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;