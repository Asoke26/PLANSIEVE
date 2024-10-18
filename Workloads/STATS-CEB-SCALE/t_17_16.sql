SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 589
AND ph.CreationDate >= 658

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;