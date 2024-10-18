SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 2
AND p.CreationDate >= 849
AND p.CreationDate <= 1102

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;