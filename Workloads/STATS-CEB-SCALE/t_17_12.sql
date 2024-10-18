SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1505
AND ph.CreationDate >= 478

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;