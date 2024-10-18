SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1134
AND ph.CreationDate >= 322

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;