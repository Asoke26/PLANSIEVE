SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE pl.LinkTypeId=1
AND pl.CreationDate>=119
AND ph.CreationDate<=1457
AND v.CreationDate>=28

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;