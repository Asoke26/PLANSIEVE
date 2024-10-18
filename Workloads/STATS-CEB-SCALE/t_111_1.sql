SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE pl.LinkTypeId = 3
AND pl.CreationDate >= 1116
AND v.CreationDate >= 1006
AND v.CreationDate <= 1302

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;