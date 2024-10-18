SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 8
AND pl.LinkTypeId = 1
AND p.CreationDate >= 565
AND p.CreationDate <= 1064
AND pl.CreationDate >= 1107

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;