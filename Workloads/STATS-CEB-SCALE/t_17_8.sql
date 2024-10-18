SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 47
AND ph.CreationDate >= 402

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;