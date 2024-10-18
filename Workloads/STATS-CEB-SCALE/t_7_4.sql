SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 17
AND pl.LinkTypeId = 1
AND p.CreationDate >= 86
AND p.CreationDate <= 911
AND pl.CreationDate >= 454

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;