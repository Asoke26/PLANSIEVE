SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score <= 79
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 34.0
AND pl.LinkTypeId = 1
AND c.CreationDate >= 539
AND p.CreationDate >= 370
AND p.CreationDate <= 657
AND pl.CreationDate <= 906
AND ph.CreationDate >= 795
AND v.CreationDate <= 623

AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;