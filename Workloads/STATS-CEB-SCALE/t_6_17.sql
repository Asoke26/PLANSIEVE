SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 20
AND p.CreationDate >= 248
AND p.CreationDate <= 277

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;