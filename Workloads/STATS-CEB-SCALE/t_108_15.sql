SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 10
AND pl.CreationDate >= 698
AND pl.CreationDate <= 1383
AND v.CreationDate >= 315
AND v.CreationDate <= 1088

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;