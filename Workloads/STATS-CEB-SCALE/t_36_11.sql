SELECT COUNT(*)
 FROM comments c,
postLinks pl,
postHistory ph,
votes v
WHERE ph.CreationDate >= 584
AND ph.CreationDate <= 1177

AND pl.PostId = c.PostId
AND c.PostId = ph.PostId
AND ph.PostId = v.PostId;