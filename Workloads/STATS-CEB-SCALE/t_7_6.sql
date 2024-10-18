SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 17
AND pl.LinkTypeId = 1
AND p.CreationDate >= 614
AND p.CreationDate <= 889
AND pl.CreationDate >= 493

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;