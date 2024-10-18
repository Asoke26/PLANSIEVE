SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 2
AND pl.LinkTypeId = 3
AND p.CreationDate >= 220
AND p.CreationDate <= 1131
AND pl.CreationDate >= 1218

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;