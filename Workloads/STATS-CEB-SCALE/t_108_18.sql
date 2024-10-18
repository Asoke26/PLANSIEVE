SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 8
AND pl.CreationDate >= 1264
AND pl.CreationDate <= 1511
AND v.CreationDate >= 646
AND v.CreationDate <= 991

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;