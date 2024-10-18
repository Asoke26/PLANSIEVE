SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 84
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 74.0
AND pl.LinkTypeId = 3
AND c.CreationDate >= 454
AND p.CreationDate >= 294
AND p.CreationDate <= 1155
AND pl.CreationDate <= 1527
AND ph.CreationDate >= 61
AND v.CreationDate <= 538

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;