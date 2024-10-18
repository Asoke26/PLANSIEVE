SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 25
AND pl.CreationDate >= 388
AND pl.CreationDate <= 529
AND v.CreationDate >= 636
AND v.CreationDate <= 1395

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;