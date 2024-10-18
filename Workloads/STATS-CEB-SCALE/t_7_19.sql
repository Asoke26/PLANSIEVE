SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 2
AND pl.LinkTypeId = 1
AND p.CreationDate >= 340
AND p.CreationDate <= 910
AND pl.CreationDate >= 1474

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;