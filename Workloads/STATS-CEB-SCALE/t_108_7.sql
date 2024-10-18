SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 14
AND pl.CreationDate >= 319
AND pl.CreationDate <= 1328
AND v.CreationDate >= 448
AND v.CreationDate <= 886

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;