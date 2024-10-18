SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 36
AND ph.CreationDate >= 834

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;