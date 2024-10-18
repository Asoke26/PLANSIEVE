SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount<=18
AND p.CreationDate>=31
AND p.CreationDate<=1540

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;