SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 9
AND pl.LinkTypeId = 1
AND p.CreationDate >= 458
AND p.CreationDate <= 1335
AND pl.CreationDate >= 721

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;