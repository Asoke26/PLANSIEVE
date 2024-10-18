SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score = 40
AND pl.LinkTypeId = 1
AND p.CreationDate >= 505
AND p.CreationDate <= 1233
AND pl.CreationDate >= 805

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;