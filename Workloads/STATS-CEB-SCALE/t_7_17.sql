SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 9
AND pl.LinkTypeId = 1
AND p.CreationDate >= 991
AND p.CreationDate <= 1232
AND pl.CreationDate >= 630

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;