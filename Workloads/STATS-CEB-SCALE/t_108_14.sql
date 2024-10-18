SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 12
AND pl.CreationDate >= 362
AND pl.CreationDate <= 1016
AND v.CreationDate >= 575
AND v.CreationDate <= 1150

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;