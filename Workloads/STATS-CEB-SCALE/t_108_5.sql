SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 13
AND pl.CreationDate >= 65
AND pl.CreationDate <= 1224
AND v.CreationDate >= 405
AND v.CreationDate <= 870

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;