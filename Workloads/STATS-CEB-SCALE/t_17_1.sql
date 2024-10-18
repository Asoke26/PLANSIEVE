SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 611
AND ph.CreationDate >= 62

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;