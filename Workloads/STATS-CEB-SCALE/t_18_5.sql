SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 5
AND u.CreationDate <= 812

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;