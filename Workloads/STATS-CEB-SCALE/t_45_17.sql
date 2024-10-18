SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 25
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 108.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 615
AND p.CreationDate >= 294
AND p.CreationDate <= 912
AND pl.CreationDate <= 440
AND ph.CreationDate >= 606
AND v.CreationDate <= 633

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;