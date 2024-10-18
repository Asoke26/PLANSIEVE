SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 744
AND ph.CreationDate >= 1539

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;