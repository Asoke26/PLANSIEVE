SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate>=27
AND ph.CreationDate>=28

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;