SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 74
AND p.FavoriteCount >= 34.0
AND p.FavoriteCount <= 135.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 220
AND p.CreationDate >= 198
AND p.CreationDate <= 840
AND pl.CreationDate <= 806
AND ph.CreationDate >= 550
AND v.CreationDate <= 1357

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;