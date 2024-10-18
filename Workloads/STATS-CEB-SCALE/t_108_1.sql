SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 7
AND pl.CreationDate >= 513
AND pl.CreationDate <= 925
AND v.CreationDate >= 459
AND v.CreationDate <= 1187

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;