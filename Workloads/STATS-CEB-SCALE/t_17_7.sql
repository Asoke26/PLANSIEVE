SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 58
AND ph.CreationDate >= 242

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;