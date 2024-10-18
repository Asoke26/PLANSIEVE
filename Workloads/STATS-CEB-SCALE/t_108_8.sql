SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 13
AND pl.CreationDate >= 778
AND pl.CreationDate <= 982
AND v.CreationDate >= 1000
AND v.CreationDate <= 1356

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;