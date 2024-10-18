SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 25
AND pl.LinkTypeId = 1
AND p.CreationDate >= 78
AND p.CreationDate <= 153
AND pl.CreationDate >= 216

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;