SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 97
AND p.FavoriteCount >= 26.0
AND p.FavoriteCount <= 44.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 444
AND p.CreationDate >= 189
AND p.CreationDate <= 1163
AND pl.CreationDate <= 791
AND ph.CreationDate >= 321
AND v.CreationDate <= 447

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;