SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1014
AND ph.CreationDate >= 287

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;