SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 797
AND ph.CreationDate >= 1204

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;