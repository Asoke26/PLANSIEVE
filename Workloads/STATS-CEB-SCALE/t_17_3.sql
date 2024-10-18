SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph
WHERE p.CreationDate >= 1537
AND ph.CreationDate >= 658

AND p.Id = pl.PostId
AND pl.PostId = ph.PostId;