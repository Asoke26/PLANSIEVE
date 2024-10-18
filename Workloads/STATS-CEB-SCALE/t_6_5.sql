SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 30
AND p.CreationDate >= 1038
AND p.CreationDate <= 1377

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;