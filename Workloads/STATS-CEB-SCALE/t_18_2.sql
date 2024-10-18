SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 10
AND u.CreationDate <= 1485

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;