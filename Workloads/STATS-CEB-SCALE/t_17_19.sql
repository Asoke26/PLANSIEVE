SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1410
AND ph.CreationDate >= 700

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;