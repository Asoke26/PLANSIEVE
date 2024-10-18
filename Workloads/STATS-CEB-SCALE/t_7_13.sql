SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 8
AND pl.LinkTypeId = 3
AND p.CreationDate >= 437
AND p.CreationDate <= 1257
AND pl.CreationDate >= 1077

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;