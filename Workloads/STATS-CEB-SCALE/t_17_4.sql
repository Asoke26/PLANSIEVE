SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 35
AND ph.CreationDate >= 1179

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;