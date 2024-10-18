SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 8
AND pl.CreationDate >= 480
AND pl.CreationDate <= 1438
AND v.CreationDate >= 1437
AND v.CreationDate <= 1452

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;