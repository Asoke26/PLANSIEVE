SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 27
AND p.CreationDate >= 281
AND p.CreationDate <= 406

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;