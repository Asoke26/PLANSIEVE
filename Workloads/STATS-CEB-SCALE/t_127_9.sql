SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 52
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 113.0
AND pl.LinkTypeId = 3
AND c.CreationDate >= 369
AND p.CreationDate >= 364
AND p.CreationDate <= 715
AND pl.CreationDate <= 1076
AND ph.CreationDate >= 553
AND v.CreationDate <= 1055

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;