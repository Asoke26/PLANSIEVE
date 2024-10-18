SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 737
AND ph.CreationDate >= 691

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;