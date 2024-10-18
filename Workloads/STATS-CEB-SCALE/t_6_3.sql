SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 8
AND p.CreationDate >= 707
AND p.CreationDate <= 1511

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;