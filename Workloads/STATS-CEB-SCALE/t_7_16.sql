SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 8
AND pl.LinkTypeId = 3
AND p.CreationDate >= 83
AND p.CreationDate <= 1153
AND pl.CreationDate >= 824

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;