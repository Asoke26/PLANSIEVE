SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v
WHERE ph.CreationDate >= 1096
AND ph.CreationDate <= 1362

AND pl.PostId = c.PostId
AND c.PostId = ph.PostId
AND ph.PostId = v.PostId;