SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 15
AND pl.LinkTypeId = 1
AND p.CreationDate >= 1281
AND p.CreationDate <= 1383
AND pl.CreationDate >= 1043

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;