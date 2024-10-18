SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 18
AND pl.CreationDate >= 739
AND pl.CreationDate <= 1373
AND v.CreationDate >= 11
AND v.CreationDate <= 1091

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;