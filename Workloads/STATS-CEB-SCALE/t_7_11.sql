SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 11
AND pl.LinkTypeId = 1
AND p.CreationDate >= 680
AND p.CreationDate <= 1292
AND pl.CreationDate >= 34

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;