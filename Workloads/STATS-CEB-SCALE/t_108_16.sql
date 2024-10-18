SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 3
AND pl.CreationDate >= 302
AND pl.CreationDate <= 1293
AND v.CreationDate >= 4
AND v.CreationDate <= 362

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;