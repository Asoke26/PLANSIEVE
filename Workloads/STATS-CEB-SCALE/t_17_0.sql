SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1091
AND ph.CreationDate >= 111

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;