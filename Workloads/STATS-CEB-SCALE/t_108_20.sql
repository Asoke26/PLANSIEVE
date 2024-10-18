SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 11
AND pl.CreationDate >= 670
AND pl.CreationDate <= 952
AND v.CreationDate >= 570
AND v.CreationDate <= 1325

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;