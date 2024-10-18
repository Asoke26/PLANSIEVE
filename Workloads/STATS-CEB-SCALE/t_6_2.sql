SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 3
AND p.CreationDate >= 122
AND p.CreationDate <= 179

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;