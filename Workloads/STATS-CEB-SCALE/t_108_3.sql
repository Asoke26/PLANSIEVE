SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 3
AND pl.CreationDate >= 428
AND pl.CreationDate <= 1036
AND v.CreationDate >= 839
AND v.CreationDate <= 1494

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;