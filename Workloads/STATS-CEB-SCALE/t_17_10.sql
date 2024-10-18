SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 4
AND ph.CreationDate >= 237

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;