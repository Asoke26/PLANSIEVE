SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 30
AND p.CreationDate >= 554
AND p.CreationDate <= 1129

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;