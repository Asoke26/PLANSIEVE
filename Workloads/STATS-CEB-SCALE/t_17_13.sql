SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 770
AND ph.CreationDate >= 452

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;