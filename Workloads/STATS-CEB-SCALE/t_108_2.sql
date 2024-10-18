SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 3
AND pl.CreationDate >= 1374
AND pl.CreationDate <= 1415
AND v.CreationDate >= 221
AND v.CreationDate <= 1169

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;