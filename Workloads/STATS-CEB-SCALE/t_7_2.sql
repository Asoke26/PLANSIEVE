SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 21
AND pl.LinkTypeId = 1
AND p.CreationDate >= 107
AND p.CreationDate <= 1264
AND pl.CreationDate >= 891

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;