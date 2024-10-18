SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v,
posts p
WHERE c.Score=0
AND pl.CreationDate>=517
AND pl.CreationDate<=1532
AND v.CreationDate>=30
AND v.CreationDate<=1545

AND pl.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id
AND ph.PostId = p.Id;