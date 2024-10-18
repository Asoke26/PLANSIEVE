SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 87
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 19.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 93
AND p.CreationDate >= 242
AND p.CreationDate <= 1372
AND pl.CreationDate <= 1223
AND ph.CreationDate >= 522
AND v.CreationDate <= 1501

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;