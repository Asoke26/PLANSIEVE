SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 71
AND p.FavoriteCount >= 35.0
AND p.FavoriteCount <= 61.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1221
AND p.CreationDate >= 490
AND p.CreationDate <= 1515
AND pl.CreationDate <= 1041
AND ph.CreationDate >= 543
AND v.CreationDate <= 1097

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;