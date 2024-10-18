SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1124
AND ph.CreationDate >= 1164

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;