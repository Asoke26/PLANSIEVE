SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 15
AND u.CreationDate <= 940

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;