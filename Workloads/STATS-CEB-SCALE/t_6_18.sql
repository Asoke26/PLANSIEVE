SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 25
AND p.CreationDate >= 517
AND p.CreationDate <= 1462

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;