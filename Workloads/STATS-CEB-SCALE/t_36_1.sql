SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v
WHERE ph.CreationDate >= 35
AND ph.CreationDate <= 612

AND pl.PostId = c.PostId
AND c.PostId = ph.PostId
AND ph.PostId = v.PostId;