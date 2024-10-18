SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 3
AND pl.LinkTypeId = 1
AND p.CreationDate >= 144
AND p.CreationDate <= 481
AND pl.CreationDate >= 1369

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;