SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE pl.LinkTypeId = 1
AND pl.CreationDate >= 964
AND v.CreationDate >= 272
AND v.CreationDate <= 1283

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;