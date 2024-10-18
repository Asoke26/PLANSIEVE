SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 12
AND pl.CreationDate >= 219
AND pl.CreationDate <= 1121
AND v.CreationDate >= 1340
AND v.CreationDate <= 1352

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;