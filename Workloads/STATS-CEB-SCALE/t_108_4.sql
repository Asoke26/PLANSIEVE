SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 15
AND pl.CreationDate >= 304
AND pl.CreationDate <= 1518
AND v.CreationDate >= 1155
AND v.CreationDate <= 1521

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;