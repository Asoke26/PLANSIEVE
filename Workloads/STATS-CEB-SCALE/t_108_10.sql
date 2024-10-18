SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 10
AND pl.CreationDate >= 394
AND pl.CreationDate <= 1053
AND v.CreationDate >= 871
AND v.CreationDate <= 1519

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;