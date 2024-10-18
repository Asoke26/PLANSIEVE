SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v
WHERE ph.CreationDate >= 697
AND ph.CreationDate <= 1477

AND pl.PostId = c.PostId
AND c.PostId = ph.PostId
AND ph.PostId = v.PostId;