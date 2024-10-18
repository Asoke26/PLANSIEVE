SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 1
AND pl.LinkTypeId = 3
AND p.CreationDate >= 699
AND p.CreationDate <= 1447
AND pl.CreationDate >= 249

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;