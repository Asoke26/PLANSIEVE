SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 554
AND ph.CreationDate >= 705

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;