SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 43
AND p.FavoriteCount >= 12.0
AND p.FavoriteCount <= 63.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 1087
AND p.CreationDate >= 179
AND p.CreationDate <= 1333
AND pl.CreationDate <= 1226
AND ph.CreationDate >= 346
AND v.CreationDate <= 1458

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;