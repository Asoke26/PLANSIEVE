SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 15
AND pl.LinkTypeId = 3
AND p.CreationDate >= 343
AND p.CreationDate <= 1148
AND pl.CreationDate >= 292

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;