SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 59
AND ph.CreationDate >= 1533

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;