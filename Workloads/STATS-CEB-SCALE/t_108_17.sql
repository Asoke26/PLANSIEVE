SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 4
AND pl.CreationDate >= 378
AND pl.CreationDate <= 1281
AND v.CreationDate >= 488
AND v.CreationDate <= 1086

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;