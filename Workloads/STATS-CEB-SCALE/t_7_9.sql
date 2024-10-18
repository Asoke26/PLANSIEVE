SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 26
AND pl.LinkTypeId = 1
AND p.CreationDate >= 437
AND p.CreationDate <= 1245
AND pl.CreationDate >= 870

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;