SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 19
AND p.CreationDate >= 99
AND p.CreationDate <= 531

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;