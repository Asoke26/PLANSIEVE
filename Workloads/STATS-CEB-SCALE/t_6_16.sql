SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 9
AND p.CreationDate >= 500
AND p.CreationDate <= 732

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;