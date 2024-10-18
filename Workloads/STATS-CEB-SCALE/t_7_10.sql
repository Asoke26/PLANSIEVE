SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 1
AND pl.LinkTypeId = 1
AND p.CreationDate >= 523
AND p.CreationDate <= 830
AND pl.CreationDate >= 1096

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;