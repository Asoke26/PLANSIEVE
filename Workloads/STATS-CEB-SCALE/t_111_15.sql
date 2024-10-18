SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE pl.LinkTypeId = 1
AND pl.CreationDate >= 289
AND v.CreationDate >= 393
AND v.CreationDate <= 662

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;