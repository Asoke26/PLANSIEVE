SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 4
AND pl.CreationDate >= 593
AND pl.CreationDate <= 887
AND v.CreationDate >= 965
AND v.CreationDate <= 1248

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;