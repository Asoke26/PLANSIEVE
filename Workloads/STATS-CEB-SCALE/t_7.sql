SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE c.Score=0
AND pl.LinkTypeId=1
AND p.CreationDate>=76
AND p.CreationDate<=1543
AND pl.CreationDate>=382

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;