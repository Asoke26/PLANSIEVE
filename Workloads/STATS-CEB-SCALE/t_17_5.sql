SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1002
AND ph.CreationDate >= 609

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;