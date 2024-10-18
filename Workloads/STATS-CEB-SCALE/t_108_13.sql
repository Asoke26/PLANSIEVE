SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score = 18
AND pl.CreationDate >= 520
AND pl.CreationDate <= 1148
AND v.CreationDate >= 138
AND v.CreationDate <= 776

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;