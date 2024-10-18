SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 2
AND pl.LinkTypeId = 1
AND p.CreationDate >= 823
AND p.CreationDate <= 1137
AND pl.CreationDate >= 1049

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;