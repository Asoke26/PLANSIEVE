SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 47
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 26.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 883
AND p.CreationDate >= 541
AND p.CreationDate <= 1083
AND pl.CreationDate <= 1383
AND ph.CreationDate >= 894
AND v.CreationDate <= 681

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;