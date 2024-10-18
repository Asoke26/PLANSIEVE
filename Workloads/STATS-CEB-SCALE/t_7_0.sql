SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 2
AND pl.LinkTypeId = 3
AND p.CreationDate >= 573
AND p.CreationDate <= 611
AND pl.CreationDate >= 99

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;